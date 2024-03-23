#pragma once

#include <cstring>
#include <cmath>
#include <algorithm>
#include <vector>
#include <string>
#include <iostream>
#include <fstream>

#include "CommonMacros.h"

namespace luban
{
	class ByteBuf
	{
	private:
		static const int INIT_CAPACITY; // 默认空间
		static const byte EMPTY_BYTES[1];

		byte* data_;
		int beginPos_;
		int endPos_;
		int capacity_;

	public:
		ByteBuf() : data_((byte*)(EMPTY_BYTES)), beginPos_(0), endPos_(0), capacity_(0)
		{

		}



		~ByteBuf()
		{
			deleteOldData();
		}

		ByteBuf(int capacity)
		{
			init(new byte[capacity], capacity, 0, 0);
		}

		ByteBuf(byte* bytes, int capacity, int beginPos_, int endPos_)
		{
			this->capacity_ = capacity;
			this->data_ = bytes;
			this->beginPos_ = beginPos_;
			this->endPos_ = endPos_;
		}



		int getCapacity() const
		{
			return capacity_;
		}

		int size() const
		{
			return endPos_ - beginPos_;
		}

		int getReadIndex() const
		{
			return beginPos_;
		}

		int getWriteIndex() const
		{
			return endPos_;
		}

		byte* getDataUnsafe() const
		{
			return data_;
		}


		void replace(byte* bytes, int size)
		{
			deleteOldData();
			this->capacity_ = size;
			this->data_ = bytes;
			this->beginPos_ = 0;
			this->endPos_ = size;
		}


		bool skipBytes()
		{
			int oldReadIndex = beginPos_;
			int n;
			if (!readSize(n) || !ensureRead(n))
			{
				beginPos_ = oldReadIndex;
				return false;
			}
			beginPos_ += n;
			return true;
		}

		void addWriteIndexUnsafe(int add)
		{
			endPos_ += add;
		}

		void addReadIndexUnsafe(int add)
		{
			beginPos_ += add;
		}


		byte* copyRemainData(int& len)
		{
			int n = size();
			len = n;
			if (n > 0)
			{
				byte* arr = new byte[n];
				std::memcpy(arr, this->data_ + beginPos_, n);
				return arr;
			}
			else
			{
				return const_cast<byte*>(EMPTY_BYTES);
			}
		}

		void clear()
		{
			beginPos_ = endPos_ = 0;
		}

		void append(byte x)
		{
			reserveWrite(1);
			data_[endPos_++] = x;
		}


		// ==================================
		//  以下是序列化具体数据类型相关函数
		// ==================================

		void writeBool(bool b)
		{
			reserveWrite(1);
			data_[endPos_++] = b;
		}

		bool readBool(bool& out)
		{
			if (!ensureRead(1)) return false;;
			out = bool(data_[beginPos_++]);
			return true;
		}

		void writeByte(byte x)
		{
			reserveWrite(1);
			data_[endPos_++] = x;
		}

		bool readByte(byte& out)
		{
			if (!ensureRead(1)) return false;
			out = data_[beginPos_++];
			return true;
		}


		void writeShort(int16_t x)
		{
			if (x >= 0)
			{
				if (x < 0x80)
				{
					reserveWrite(1);
					data_[endPos_++] = (byte)x;
					return;
				}
				else if (x < 0x4000)
				{
					reserveWrite(2);
					data_[endPos_ + 1] = (byte)x;
					data_[endPos_] = (byte)((x >> 8) | 0x80);
					endPos_ += 2;
					return;
				}
			}
			reserveWrite(3);
			data_[endPos_] = byte{ 0xff };
			data_[endPos_ + 2] = (byte)x;
			data_[endPos_ + 1] = (byte)(x >> 8);
			endPos_ += 3;
		}

		bool readShort(int16_t& out)
		{
			if (!ensureRead(1)) return false;
			int32_t h = (data_[beginPos_] & 0xff);
			if (h < 0x80)
			{
				beginPos_++;
				out = (int16_t)h;
			}
			else if (h < 0xc0)
			{
				if (!ensureRead(2)) return false;
				int32_t x = ((h & 0x3f) << 8) | (data_[beginPos_ + 1] & 0xff);
				beginPos_ += 2;
				out = (int16_t)x;
			}
			else if (h == 0xff)
			{
				if (!ensureRead(3)) return false;
				int32_t x = ((data_[beginPos_ + 1] & 0xff) << 8) | (data_[beginPos_ + 2] & 0xff);
				beginPos_ += 3;
				out = (int16_t)x;
			}
			else
			{
				return false;
			}
			return true;
		}


		void writeFshort(int16_t x)
		{
			reserveWrite(2);
			copy2(getWriteData(), (byte*)&x);
			endPos_ += 2;
		}

		bool readFshort(int16_t& out)
		{
			if (!ensureRead(2)) return false;
			copy2((byte*)&out, getReadData());
			beginPos_ += 2;
			return true;
		}

		void writeInt(int32_t x)
		{
			writeUint((uint32_t)x);
		}

		bool readInt(int32_t& out)
		{
			return (int32_t)readUint(*(uint32_t*)&out);
		}

		void writeFint(int32_t x)
		{
			reserveWrite(4);
			copy4(getWriteData(), (byte*)&x);
			endPos_ += 4;
		}

		bool readFint(int32_t& out)
		{
			if (!ensureRead(4)) return false;
			copy4((byte*)&out, getReadData());
			beginPos_ += 4;
			return true;
		}

		// marshal int 
		// n -> (n << 1) ^ (n >> 31)
		// read
		// (x >>> 1) ^ ((x << 31) >> 31)
		// (x >>> 1) ^ -(n&1)
		void writeSint(int32_t x)
		{
			writeUint((x << 1) ^ (x >> 31));
		}

		bool readSint(int32_t& out)
		{
			uint32_t x;
			if (readUint(x))
			{
				out = ((int32_t)(x >> 1) ^ -((int32_t)x & 1));
				return true;
			}
			else
			{
				return false;
			}
		}

		void writeUint(uint32_t x)
		{
			// 0 111 1111
			if (x < 0x80)
			{
				reserveWrite(1);
				data_[endPos_++] = (byte)x;
			}
			else if (x < 0x4000) // 10 11 1111, -
			{
				reserveWrite(2);
				data_[endPos_ + 1] = (byte)x;
				data_[endPos_] = (byte)((x >> 8) | 0x80);
				endPos_ += 2;
			}
			else if (x < 0x200000) // 110 1 1111, -,-
			{
				reserveWrite(3);
				data_[endPos_ + 2] = (byte)x;
				data_[endPos_ + 1] = (byte)(x >> 8);
				data_[endPos_] = (byte)((x >> 16) | 0xc0);
				endPos_ += 3;
			}
			else if (x < 0x10000000) // 1110 1111,-,-,-
			{
				reserveWrite(4);
				data_[endPos_ + 3] = (byte)x;
				data_[endPos_ + 2] = (byte)(x >> 8);
				data_[endPos_ + 1] = (byte)(x >> 16);
				data_[endPos_] = (byte)((x >> 24) | 0xe0);
				endPos_ += 4;
			}
			else
			{
				reserveWrite(5);
				data_[endPos_] = 0xf0;
				data_[endPos_ + 4] = (byte)x;
				data_[endPos_ + 3] = (byte)(x >> 8);
				data_[endPos_ + 2] = (byte)(x >> 16);
				data_[endPos_ + 1] = (byte)(x >> 24);
				endPos_ += 5;
			}
		}

		bool readUint(uint32_t& out)
		{
			if (!ensureRead(1)) return false;
			uint32_t h = data_[beginPos_];
			if (h < 0x80)
			{
				beginPos_++;
				out = h;
			}
			else if (h < 0xc0)
			{
				if (!ensureRead(2)) return false;
				uint32_t x = ((h & 0x3f) << 8) | data_[beginPos_ + 1];
				beginPos_ += 2;
				out = x;
			}
			else if (h < 0xe0)
			{
				if (!ensureRead(3)) return false;
				uint32_t x = ((h & 0x1f) << 16) | ((uint32_t)data_[beginPos_ + 1] << 8) | data_[beginPos_ + 2];
				beginPos_ += 3;
				out = x;
			}
			else if (h < 0xf0)
			{

				if (!ensureRead(4)) return false;
				uint32_t x = ((h & 0x0f) << 24) | ((uint32_t)data_[beginPos_ + 1] << 16) | ((uint32_t)data_[beginPos_ + 2] << 8) | data_[beginPos_ + 3];
				beginPos_ += 4;
				out = x;
			}
			else
			{
				if (!ensureRead(5)) return false;
				uint32_t x = ((uint32_t)data_[beginPos_ + 1] << 24) | ((uint32_t)(data_[beginPos_ + 2] << 16))
					| ((uint32_t)data_[beginPos_ + 3] << 8) | ((uint32_t)data_[beginPos_ + 4]);
				beginPos_ += 5;
				out = x;
			}
			return true;
		}


		void writeLong(int64_t x)
		{
			writeUlong((uint64_t)x);
		}

		bool readLong(int64_t& out)
		{
			return readUlong((uint64_t&)*(uint64_t*)&out);
		}

		// marshal long
		// n -> (n << 1) ^ (n >> 63)
		// read
		// (x >>> 1) ^((x << 63) >> 63)
		// (x >>> 1) ^ -(n&1L)
		void writeSlong(int64_t x)
		{
			writeUlong((x << 1) ^ (x >> 63));
		}

		bool readSlong(int64_t& out)
		{
			uint64_t x;
			if (readUlong(x))
			{
				out = ((int64_t)(x >> 1) ^ -((int64_t)x & 1));
				return true;
			}
			else
			{
				return false;
			}
		}


		void writeFlong(int64_t x)
		{
			reserveWrite(8);
			copy8(getWriteData(), (byte*)&x);
			endPos_ += 8;
		}

		bool readFlong(int64_t& out)
		{
			if (!ensureRead(8)) return false;
			copy8((byte*)&out, getReadData());
			beginPos_ += 8;
			return true;
		}

		void writeUlong(uint64_t x)
		{
			// 0 111 1111
			if (x < 0x80)
			{
				reserveWrite(1);
				data_[endPos_++] = (byte)x;
			}
			else if (x < 0x4000) // 10 11 1111, -
			{
				reserveWrite(2);
				data_[endPos_ + 1] = (byte)x;
				data_[endPos_] = (byte)((x >> 8) | 0x80);
				endPos_ += 2;
			}
			else if (x < 0x200000) // 110 1 1111, -,-
			{
				reserveWrite(3);
				data_[endPos_ + 2] = (byte)x;
				data_[endPos_ + 1] = (byte)(x >> 8);
				data_[endPos_] = (byte)((x >> 16) | 0xc0);
				endPos_ += 3;
			}
			else if (x < 0x10000000) // 1110 1111,-,-,-
			{
				reserveWrite(4);
				data_[endPos_ + 3] = (byte)x;
				data_[endPos_ + 2] = (byte)(x >> 8);
				data_[endPos_ + 1] = (byte)(x >> 16);
				data_[endPos_] = (byte)((x >> 24) | 0xe0);
				endPos_ += 4;
			}
			else if (x < 0x800000000L) // 1111 0xxx,-,-,-,-
			{
				reserveWrite(5);
				data_[endPos_ + 4] = (byte)x;
				data_[endPos_ + 3] = (byte)(x >> 8);
				data_[endPos_ + 2] = (byte)(x >> 16);
				data_[endPos_ + 1] = (byte)(x >> 24);
				data_[endPos_] = (byte)((x >> 32) | 0xf0);
				endPos_ += 5;
			}
			else if (x < 0x40000000000L) // 1111 10xx, 
			{
				reserveWrite(6);
				data_[endPos_ + 5] = (byte)x;
				data_[endPos_ + 4] = (byte)(x >> 8);
				data_[endPos_ + 3] = (byte)(x >> 16);
				data_[endPos_ + 2] = (byte)(x >> 24);
				data_[endPos_ + 1] = (byte)(x >> 32);
				data_[endPos_] = (byte)((x >> 40) | 0xf8);
				endPos_ += 6;
			}
			else if (x < 0x200000000000L) // 1111 110x,
			{
				reserveWrite(7);
				data_[endPos_ + 6] = (byte)x;
				data_[endPos_ + 5] = (byte)(x >> 8);
				data_[endPos_ + 4] = (byte)(x >> 16);
				data_[endPos_ + 3] = (byte)(x >> 24);
				data_[endPos_ + 2] = (byte)(x >> 32);
				data_[endPos_ + 1] = (byte)(x >> 40);
				data_[endPos_] = (byte)((x >> 48) | 0xfc);
				endPos_ += 7;
			}
			else if (x < 0x100000000000000L) // 1111 1110
			{
				reserveWrite(8);
				data_[endPos_ + 7] = (byte)x;
				data_[endPos_ + 6] = (byte)(x >> 8);
				data_[endPos_ + 5] = (byte)(x >> 16);
				data_[endPos_ + 4] = (byte)(x >> 24);
				data_[endPos_ + 3] = (byte)(x >> 32);
				data_[endPos_ + 2] = (byte)(x >> 40);
				data_[endPos_ + 1] = (byte)(x >> 48);
				data_[endPos_] = 0xfe;
				endPos_ += 8;
			}
			else // 1111 1111
			{
				reserveWrite(9);
				data_[endPos_] = 0xff;
				data_[endPos_ + 8] = (byte)x;
				data_[endPos_ + 7] = (byte)(x >> 8);
				data_[endPos_ + 6] = (byte)(x >> 16);
				data_[endPos_ + 5] = (byte)(x >> 24);
				data_[endPos_ + 4] = (byte)(x >> 32);
				data_[endPos_ + 3] = (byte)(x >> 40);
				data_[endPos_ + 2] = (byte)(x >> 48);
				data_[endPos_ + 1] = (byte)(x >> 56);
				endPos_ += 9;
			}
		}

		bool readUlong(uint64_t& out)
		{
			if (!ensureRead(1)) return false;
			uint32_t h = data_[beginPos_];
			if (h < 0x80)
			{
				beginPos_++;
				out = h;
			}
			else if (h < 0xc0)
			{
				if (!ensureRead(2)) return false;
				uint32_t x = ((h & 0x3f) << 8) | data_[beginPos_ + 1];
				beginPos_ += 2;
				out = x;
			}
			else if (h < 0xe0)
			{
				if (!ensureRead(3)) return false;
				uint32_t x = ((h & 0x1f) << 16) | ((uint32_t)data_[beginPos_ + 1] << 8) | data_[beginPos_ + 2];
				beginPos_ += 3;
				out = x;
			}
			else if (h < 0xf0)
			{
				if (!ensureRead(4)) return false;
				uint32_t x = ((h & 0x0f) << 24) | ((uint32_t)data_[beginPos_ + 1] << 16) | ((uint32_t)data_[beginPos_ + 2] << 8) | data_[beginPos_ + 3];
				beginPos_ += 4;
				out = x;
			}
			else if (h < 0xf8)
			{
				if (!ensureRead(5)) return false;
				uint32_t xl = ((uint32_t)data_[beginPos_ + 1] << 24) | ((uint32_t)(data_[beginPos_ + 2] << 16)) | ((uint32_t)data_[beginPos_ + 3] << 8) | (data_[beginPos_ + 4]);
				uint32_t xh = h & 0x07;
				beginPos_ += 5;
				out = ((uint64_t)xh << 32) | xl;
			}
			else if (h < 0xfc)
			{
				if (!ensureRead(6)) return false;
				uint32_t xl = ((uint32_t)data_[beginPos_ + 2] << 24) | ((uint32_t)(data_[beginPos_ + 3] << 16)) | ((uint32_t)data_[beginPos_ + 4] << 8) | (data_[beginPos_ + 5]);
				uint32_t xh = ((h & 0x03) << 8) | data_[beginPos_ + 1];
				beginPos_ += 6;
				out = ((uint64_t)xh << 32) | xl;
			}
			else if (h < 0xfe)
			{
				if (!ensureRead(7)) return false;
				uint32_t xl = ((uint32_t)data_[beginPos_ + 3] << 24) | ((uint32_t)(data_[beginPos_ + 4] << 16)) | ((uint32_t)data_[beginPos_ + 5] << 8) | (data_[beginPos_ + 6]);
				uint32_t xh = ((h & 0x01) << 16) | ((uint32_t)data_[beginPos_ + 1] << 8) | data_[beginPos_ + 2];
				beginPos_ += 7;
				out = ((uint64_t)xh << 32) | xl;
			}
			else if (h < 0xff)
			{
				if (!ensureRead(8)) return false;
				uint32_t xl = ((uint32_t)data_[beginPos_ + 4] << 24) | ((uint32_t)(data_[beginPos_ + 5] << 16)) | ((uint32_t)data_[beginPos_ + 6] << 8) | (data_[beginPos_ + 7]);
				uint32_t xh = /*((h & 0x01) << 24) |*/ ((uint32_t)data_[beginPos_ + 1] << 16) | ((uint32_t)data_[beginPos_ + 2] << 8) | data_[beginPos_ + 3];
				beginPos_ += 8;
				out = ((uint64_t)xh << 32) | xl;
			}
			else
			{
				if (!ensureRead(9)) return false;
				uint32_t xl = ((uint32_t)data_[beginPos_ + 5] << 24) | ((uint32_t)(data_[beginPos_ + 6] << 16)) | ((uint32_t)data_[beginPos_ + 7] << 8) | (data_[beginPos_ + 8]);
				uint32_t xh = ((uint32_t)data_[beginPos_ + 1] << 24) | ((uint32_t)data_[beginPos_ + 2] << 16) | ((uint32_t)data_[beginPos_ + 3] << 8) | data_[beginPos_ + 4];
				beginPos_ += 9;
				out = ((uint64_t)xh << 32) | xl;
			}
			return true;
		}


		void writeFloat(float x)
		{
			reserveWrite(4);

			byte* b = &data_[endPos_];

			if ((int64_t)b % 4 == 0)
			{
				*(float*)b = x;
			}
			else
			{
				// TODO x是对齐的, 可以优化
				copy4(b, (byte*)&x);
			}

			endPos_ += 4;
		}

		bool readFloat(float& out)
		{
			if (!ensureRead(4)) return false;

			float x;
			byte* b = &data_[beginPos_];

			if ((int64_t)b % 4 == 0)
			{
				x = *(float*)b;
			}
			else
			{
				// TODO x是对齐的, 可以优化
				copy4((byte*)&x, b);
			}
			beginPos_ += 4;
			out = x;
			return true;
		}

		void writeDouble(double x)
		{
			reserveWrite(8);
			byte* b = &data_[endPos_];

			if ((int64_t)b % 8 == 0)
			{
				*(double*)b = x;
			}
			else
			{
				copy8(b, (byte*)&x);
			}

			endPos_ += 8;
		}

		bool readDouble(double& out)
		{
			if (!ensureRead(8)) return false;

			double x;
			byte* b = &data_[beginPos_];

			if ((int64_t)b % 8 == 0)
			{
				x = *(double*)b;
			}
			else
			{
				// TODO x是对齐的, 可以优化
				copy8((byte*)&x, b);
			}

			beginPos_ += 8;
			out = x;
			return true;
		}

		void writeString(const std::string& x)
		{
			int n = (int)x.length();
			writeSize(n);
			if (n > 0)
			{
				reserveWrite(n);
				std::memcpy(data_ + endPos_, x.data(), n);
				endPos_ += n;
			}
		}

		bool readString(std::string& x)
		{
			int n;
			if (!readSize(n)) return false;
			if (!ensureRead(n)) return false;
			x.resize(n);
			if (n > 0)
			{
				std::memcpy((void*)x.data(), data_ + beginPos_, n);
				beginPos_ += n;
			}
			return true;
		}

		void writeBytes(const char* buff, int len)
		{
			int n = len;
			writeSize(n);
			reserveWrite(n);
			std::memcpy(data_ + endPos_, buff, n);
			endPos_ += n;
		}

		bool readBytesNotCopy(char*& buffer, int& len)
		{
			int n;
			if (!readSize(n) || !ensureRead(n)) return false;
			len = n;
			buffer = (char*)this->getReadData();
			beginPos_ += n;
			return true;
		}


		void writeSize(int n)
		{
			writeUint(n);
		}

		bool readSize(int& out)
		{
			uint32_t re;
			if (readUint(re))
			{
				out = re;
				return true;
			}
			else
			{
				return false;
			}
		}

		void appendBuffer(const char* buf, int len)
		{
			int n = len;
			reserveWrite(n);
			std::memcpy(data_ + endPos_, buf, n);
			endPos_ += n;
		}

		std::string toString()
		{
			std::string re;
			char hex[2];
			for (int i = beginPos_; i < endPos_; i++)
			{
				if (i != beginPos_)
				{
					re.append(".");
				}
				hex[0] = toHex(data_[i] >> 4);
				hex[1] = toHex(data_[i] & 0xf);
				re.append(hex, 2);
			}
			return re;//std::move(re);
		}

		static ByteBuf* fromString(const std::string& value)
		{

			ByteBuf* re = new ByteBuf();
			char* str = const_cast<char*>(value.c_str());
			for (; *str; )
			{
				if (*str == ',' || *str == '.')
				{
					++str;
				}
				re->append(byte(std::strtoul(str, &str, 16)));
			}
			return re;
		}

		enum class UnmarshalError : int
		{
			OK,
			NOT_ENOUGH,
			EXCEED_SIZE,
			UNMARSHAL_ERR,
		};

		UnmarshalError TryInplaceUnmarshalBuf(int maxSize, ByteBuf& body)
		{
			int oldReadIndex = beginPos_;

			int n;
			if (!readSize(n))
			{
				this->beginPos_ = oldReadIndex;
				return UnmarshalError::NOT_ENOUGH;
			}
			if (n > maxSize)
			{
				this->beginPos_ = oldReadIndex;
				return UnmarshalError::EXCEED_SIZE;
			}
			if (size() < n)
			{
				this->beginPos_ = oldReadIndex;
				return UnmarshalError::NOT_ENOUGH;
			}
			body.data_ = data_;
			body.beginPos_ = beginPos_;
			beginPos_ += n;
			body.endPos_ = beginPos_;
			return UnmarshalError::OK;
		}

		static int calcNewCapacity(int initSize, int needSize)
		{
			for (int i = std::max(initSize * 2, INIT_CAPACITY); ; i <<= 1)
			{
				if (i >= needSize)
					return i;
			}
		}

		void compactBuffer()
		{
			int remainSize = (endPos_ -= beginPos_);

			std::memmove(data_, data_ + beginPos_, remainSize);
			beginPos_ = 0;
		}

		bool loadFromFile(const std::string& file)
		{
			clear();
			std::ifstream infile(file, std::ios_base::binary);
			if (infile.fail()) return false;
			std::istreambuf_iterator<char> beginIt(infile);
			std::vector<char> arr(beginIt, std::istreambuf_iterator<char>());
			appendBuffer(arr.data(), int(arr.size()));
			return true;
		}
	private:
		void init(byte* data, int capacity, int beginPos, int endPos)
		{
			this->data_ = data;
			this->capacity_ = capacity;
			this->beginPos_ = beginPos;
			this->endPos_ = endPos;
		}

		ByteBuf(const ByteBuf& o) = delete;
		ByteBuf& operator = (const ByteBuf& o) = delete;
		ByteBuf(ByteBuf&& o) = delete;

		void deleteOldData()
		{
			if (data_ != EMPTY_BYTES)
			{

				delete[] data_;
				data_ = nullptr;

			}
		}


		byte* getReadData() const
		{
			return data_ + beginPos_;
		}

		byte* getWriteData() const
		{
			return data_ + endPos_;
		}


		int notCompactWritable()
		{
			return capacity_ - endPos_;
		}

		void compactOrResize(int size)
		{
			int remainSize = (endPos_ -= beginPos_);
			int needCapacity = remainSize + size;

			if (needCapacity <= (int)capacity_)
			{
				std::memmove(data_, data_ + beginPos_, remainSize);
				beginPos_ = 0;
			}
			else
			{
				capacity_ = calcNewCapacity(capacity_, needCapacity);
				byte* newBytes = new byte[capacity_];
				std::memmove(newBytes, data_ + beginPos_, remainSize);
				beginPos_ = 0;
				data_ = newBytes;
			}
		}

		inline void reserveWrite(int size)
		{
			if (endPos_ + size > (int)capacity_)
			{
				compactOrResize(size);
			}
		}

		inline bool ensureRead(int size)
		{
			return (beginPos_ + size <= endPos_);
		}



		static void copy8(byte* dst, byte* src)
		{
			dst[0] = src[0];
			dst[1] = src[1];
			dst[2] = src[2];
			dst[3] = src[3];
			dst[4] = src[4];
			dst[5] = src[5];
			dst[6] = src[6];
			dst[7] = src[7];
		}

		static void copy4(byte* dst, byte* src)
		{
			dst[0] = src[0];
			dst[1] = src[1];
			dst[2] = src[2];
			dst[3] = src[3];
		}

		static void copy2(byte* dst, byte* src)
		{
			dst[0] = src[0];
			dst[1] = src[1];
		}

		static char toHex(int num)
		{
			return num < 10 ? '0' + num : 'A' + num - 10;
		}
	};
}