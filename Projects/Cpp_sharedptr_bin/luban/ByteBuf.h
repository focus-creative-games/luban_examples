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

		byte* _data;
		int _beginPos;
		int _endPos;
		int _capacity;

	public:
		ByteBuf() : _data((byte*)(EMPTY_BYTES)), _beginPos(0), _endPos(0), _capacity(0)
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

		ByteBuf(byte* bytes, int capacity, int _beginPos, int _endPos)
		{
			this->_capacity = capacity;
			this->_data = bytes;
			this->_beginPos = _beginPos;
			this->_endPos = _endPos;
		}



		int getCapacity() const
		{
			return _capacity;
		}

		int size() const
		{
			return _endPos - _beginPos;
		}

		int getReadIndex() const
		{
			return _beginPos;
		}

		int getWriteIndex() const
		{
			return _endPos;
		}

		byte* getDataUnsafe() const
		{
			return _data;
		}


		void replace(byte* bytes, int size)
		{
			deleteOldData();
			this->_capacity = size;
			this->_data = bytes;
			this->_beginPos = 0;
			this->_endPos = size;
		}


		bool skipBytes()
		{
			int oldReadIndex = _beginPos;
			int n;
			if (!readSize(n) || !ensureRead(n))
			{
				_beginPos = oldReadIndex;
				return false;
			}
			_beginPos += n;
			return true;
		}

		void addWriteIndexUnsafe(int add)
		{
			_endPos += add;
		}

		void addReadIndexUnsafe(int add)
		{
			_beginPos += add;
		}


		byte* copyRemainData(int& len)
		{
			int n = size();
			len = n;
			if (n > 0)
			{
				byte* arr = new byte[n];
				std::memcpy(arr, this->_data + _beginPos, n);
				return arr;
			}
			else
			{
				return const_cast<byte*>(EMPTY_BYTES);
			}
		}

		void clear()
		{
			_beginPos = _endPos = 0;
		}

		void append(byte x)
		{
			reserveWrite(1);
			_data[_endPos++] = x;
		}


		// ==================================
		//  以下是序列化具体数据类型相关函数
		// ==================================

		void writeBool(bool b)
		{
			reserveWrite(1);
			_data[_endPos++] = b;
		}

		bool readBool(bool& out)
		{
			if (!ensureRead(1)) return false;;
			out = bool(_data[_beginPos++]);
			return true;
		}

		void writeByte(byte x)
		{
			reserveWrite(1);
			_data[_endPos++] = x;
		}

		bool readByte(byte& out)
		{
			if (!ensureRead(1)) return false;
			out = _data[_beginPos++];
			return true;
		}


		void writeShort(int16_t x)
		{
			if (x >= 0)
			{
				if (x < 0x80)
				{
					reserveWrite(1);
					_data[_endPos++] = (byte)x;
					return;
				}
				else if (x < 0x4000)
				{
					reserveWrite(2);
					_data[_endPos + 1] = (byte)x;
					_data[_endPos] = (byte)((x >> 8) | 0x80);
					_endPos += 2;
					return;
				}
			}
			reserveWrite(3);
			_data[_endPos] = byte{ 0xff };
			_data[_endPos + 2] = (byte)x;
			_data[_endPos + 1] = (byte)(x >> 8);
			_endPos += 3;
		}

		bool readShort(int16_t& out)
		{
			if (!ensureRead(1)) return false;
			int32_t h = (_data[_beginPos] & 0xff);
			if (h < 0x80)
			{
				_beginPos++;
				out = (int16_t)h;
			}
			else if (h < 0xc0)
			{
				if (!ensureRead(2)) return false;
				int32_t x = ((h & 0x3f) << 8) | (_data[_beginPos + 1] & 0xff);
				_beginPos += 2;
				out = (int16_t)x;
			}
			else if (h == 0xff)
			{
				if (!ensureRead(3)) return false;
				int32_t x = ((_data[_beginPos + 1] & 0xff) << 8) | (_data[_beginPos + 2] & 0xff);
				_beginPos += 3;
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
			_endPos += 2;
		}

		bool readFshort(int16_t& out)
		{
			if (!ensureRead(2)) return false;
			copy2((byte*)&out, getReadData());
			_beginPos += 2;
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
			_endPos += 4;
		}

		bool readFint(int32_t& out)
		{
			if (!ensureRead(4)) return false;
			copy4((byte*)&out, getReadData());
			_beginPos += 4;
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
				_data[_endPos++] = (byte)x;
			}
			else if (x < 0x4000) // 10 11 1111, -
			{
				reserveWrite(2);
				_data[_endPos + 1] = (byte)x;
				_data[_endPos] = (byte)((x >> 8) | 0x80);
				_endPos += 2;
			}
			else if (x < 0x200000) // 110 1 1111, -,-
			{
				reserveWrite(3);
				_data[_endPos + 2] = (byte)x;
				_data[_endPos + 1] = (byte)(x >> 8);
				_data[_endPos] = (byte)((x >> 16) | 0xc0);
				_endPos += 3;
			}
			else if (x < 0x10000000) // 1110 1111,-,-,-
			{
				reserveWrite(4);
				_data[_endPos + 3] = (byte)x;
				_data[_endPos + 2] = (byte)(x >> 8);
				_data[_endPos + 1] = (byte)(x >> 16);
				_data[_endPos] = (byte)((x >> 24) | 0xe0);
				_endPos += 4;
			}
			else
			{
				reserveWrite(5);
				_data[_endPos] = 0xf0;
				_data[_endPos + 4] = (byte)x;
				_data[_endPos + 3] = (byte)(x >> 8);
				_data[_endPos + 2] = (byte)(x >> 16);
				_data[_endPos + 1] = (byte)(x >> 24);
				_endPos += 5;
			}
		}

		bool readUint(uint32_t& out)
		{
			if (!ensureRead(1)) return false;
			uint32_t h = _data[_beginPos];
			if (h < 0x80)
			{
				_beginPos++;
				out = h;
			}
			else if (h < 0xc0)
			{
				if (!ensureRead(2)) return false;
				uint32_t x = ((h & 0x3f) << 8) | _data[_beginPos + 1];
				_beginPos += 2;
				out = x;
			}
			else if (h < 0xe0)
			{
				if (!ensureRead(3)) return false;
				uint32_t x = ((h & 0x1f) << 16) | ((uint32_t)_data[_beginPos + 1] << 8) | _data[_beginPos + 2];
				_beginPos += 3;
				out = x;
			}
			else if (h < 0xf0)
			{

				if (!ensureRead(4)) return false;
				uint32_t x = ((h & 0x0f) << 24) | ((uint32_t)_data[_beginPos + 1] << 16) | ((uint32_t)_data[_beginPos + 2] << 8) | _data[_beginPos + 3];
				_beginPos += 4;
				out = x;
			}
			else
			{
				if (!ensureRead(5)) return false;
				uint32_t x = ((uint32_t)_data[_beginPos + 1] << 24) | ((uint32_t)(_data[_beginPos + 2] << 16))
					| ((uint32_t)_data[_beginPos + 3] << 8) | ((uint32_t)_data[_beginPos + 4]);
				_beginPos += 5;
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
			_endPos += 8;
		}

		bool readFlong(int64_t& out)
		{
			if (!ensureRead(8)) return false;
			copy8((byte*)&out, getReadData());
			_beginPos += 8;
			return true;
		}

		void writeUlong(uint64_t x)
		{
			// 0 111 1111
			if (x < 0x80)
			{
				reserveWrite(1);
				_data[_endPos++] = (byte)x;
			}
			else if (x < 0x4000) // 10 11 1111, -
			{
				reserveWrite(2);
				_data[_endPos + 1] = (byte)x;
				_data[_endPos] = (byte)((x >> 8) | 0x80);
				_endPos += 2;
			}
			else if (x < 0x200000) // 110 1 1111, -,-
			{
				reserveWrite(3);
				_data[_endPos + 2] = (byte)x;
				_data[_endPos + 1] = (byte)(x >> 8);
				_data[_endPos] = (byte)((x >> 16) | 0xc0);
				_endPos += 3;
			}
			else if (x < 0x10000000) // 1110 1111,-,-,-
			{
				reserveWrite(4);
				_data[_endPos + 3] = (byte)x;
				_data[_endPos + 2] = (byte)(x >> 8);
				_data[_endPos + 1] = (byte)(x >> 16);
				_data[_endPos] = (byte)((x >> 24) | 0xe0);
				_endPos += 4;
			}
			else if (x < 0x800000000L) // 1111 0xxx,-,-,-,-
			{
				reserveWrite(5);
				_data[_endPos + 4] = (byte)x;
				_data[_endPos + 3] = (byte)(x >> 8);
				_data[_endPos + 2] = (byte)(x >> 16);
				_data[_endPos + 1] = (byte)(x >> 24);
				_data[_endPos] = (byte)((x >> 32) | 0xf0);
				_endPos += 5;
			}
			else if (x < 0x40000000000L) // 1111 10xx, 
			{
				reserveWrite(6);
				_data[_endPos + 5] = (byte)x;
				_data[_endPos + 4] = (byte)(x >> 8);
				_data[_endPos + 3] = (byte)(x >> 16);
				_data[_endPos + 2] = (byte)(x >> 24);
				_data[_endPos + 1] = (byte)(x >> 32);
				_data[_endPos] = (byte)((x >> 40) | 0xf8);
				_endPos += 6;
			}
			else if (x < 0x200000000000L) // 1111 110x,
			{
				reserveWrite(7);
				_data[_endPos + 6] = (byte)x;
				_data[_endPos + 5] = (byte)(x >> 8);
				_data[_endPos + 4] = (byte)(x >> 16);
				_data[_endPos + 3] = (byte)(x >> 24);
				_data[_endPos + 2] = (byte)(x >> 32);
				_data[_endPos + 1] = (byte)(x >> 40);
				_data[_endPos] = (byte)((x >> 48) | 0xfc);
				_endPos += 7;
			}
			else if (x < 0x100000000000000L) // 1111 1110
			{
				reserveWrite(8);
				_data[_endPos + 7] = (byte)x;
				_data[_endPos + 6] = (byte)(x >> 8);
				_data[_endPos + 5] = (byte)(x >> 16);
				_data[_endPos + 4] = (byte)(x >> 24);
				_data[_endPos + 3] = (byte)(x >> 32);
				_data[_endPos + 2] = (byte)(x >> 40);
				_data[_endPos + 1] = (byte)(x >> 48);
				_data[_endPos] = 0xfe;
				_endPos += 8;
			}
			else // 1111 1111
			{
				reserveWrite(9);
				_data[_endPos] = 0xff;
				_data[_endPos + 8] = (byte)x;
				_data[_endPos + 7] = (byte)(x >> 8);
				_data[_endPos + 6] = (byte)(x >> 16);
				_data[_endPos + 5] = (byte)(x >> 24);
				_data[_endPos + 4] = (byte)(x >> 32);
				_data[_endPos + 3] = (byte)(x >> 40);
				_data[_endPos + 2] = (byte)(x >> 48);
				_data[_endPos + 1] = (byte)(x >> 56);
				_endPos += 9;
			}
		}

		bool readUlong(uint64_t& out)
		{
			if (!ensureRead(1)) return false;
			uint32_t h = _data[_beginPos];
			if (h < 0x80)
			{
				_beginPos++;
				out = h;
			}
			else if (h < 0xc0)
			{
				if (!ensureRead(2)) return false;
				uint32_t x = ((h & 0x3f) << 8) | _data[_beginPos + 1];
				_beginPos += 2;
				out = x;
			}
			else if (h < 0xe0)
			{
				if (!ensureRead(3)) return false;
				uint32_t x = ((h & 0x1f) << 16) | ((uint32_t)_data[_beginPos + 1] << 8) | _data[_beginPos + 2];
				_beginPos += 3;
				out = x;
			}
			else if (h < 0xf0)
			{
				if (!ensureRead(4)) return false;
				uint32_t x = ((h & 0x0f) << 24) | ((uint32_t)_data[_beginPos + 1] << 16) | ((uint32_t)_data[_beginPos + 2] << 8) | _data[_beginPos + 3];
				_beginPos += 4;
				out = x;
			}
			else if (h < 0xf8)
			{
				if (!ensureRead(5)) return false;
				uint32_t xl = ((uint32_t)_data[_beginPos + 1] << 24) | ((uint32_t)(_data[_beginPos + 2] << 16)) | ((uint32_t)_data[_beginPos + 3] << 8) | (_data[_beginPos + 4]);
				uint32_t xh = h & 0x07;
				_beginPos += 5;
				out = ((uint64_t)xh << 32) | xl;
			}
			else if (h < 0xfc)
			{
				if (!ensureRead(6)) return false;
				uint32_t xl = ((uint32_t)_data[_beginPos + 2] << 24) | ((uint32_t)(_data[_beginPos + 3] << 16)) | ((uint32_t)_data[_beginPos + 4] << 8) | (_data[_beginPos + 5]);
				uint32_t xh = ((h & 0x03) << 8) | _data[_beginPos + 1];
				_beginPos += 6;
				out = ((uint64_t)xh << 32) | xl;
			}
			else if (h < 0xfe)
			{
				if (!ensureRead(7)) return false;
				uint32_t xl = ((uint32_t)_data[_beginPos + 3] << 24) | ((uint32_t)(_data[_beginPos + 4] << 16)) | ((uint32_t)_data[_beginPos + 5] << 8) | (_data[_beginPos + 6]);
				uint32_t xh = ((h & 0x01) << 16) | ((uint32_t)_data[_beginPos + 1] << 8) | _data[_beginPos + 2];
				_beginPos += 7;
				out = ((uint64_t)xh << 32) | xl;
			}
			else if (h < 0xff)
			{
				if (!ensureRead(8)) return false;
				uint32_t xl = ((uint32_t)_data[_beginPos + 4] << 24) | ((uint32_t)(_data[_beginPos + 5] << 16)) | ((uint32_t)_data[_beginPos + 6] << 8) | (_data[_beginPos + 7]);
				uint32_t xh = /*((h & 0x01) << 24) |*/ ((uint32_t)_data[_beginPos + 1] << 16) | ((uint32_t)_data[_beginPos + 2] << 8) | _data[_beginPos + 3];
				_beginPos += 8;
				out = ((uint64_t)xh << 32) | xl;
			}
			else
			{
				if (!ensureRead(9)) return false;
				uint32_t xl = ((uint32_t)_data[_beginPos + 5] << 24) | ((uint32_t)(_data[_beginPos + 6] << 16)) | ((uint32_t)_data[_beginPos + 7] << 8) | (_data[_beginPos + 8]);
				uint32_t xh = ((uint32_t)_data[_beginPos + 1] << 24) | ((uint32_t)_data[_beginPos + 2] << 16) | ((uint32_t)_data[_beginPos + 3] << 8) | _data[_beginPos + 4];
				_beginPos += 9;
				out = ((uint64_t)xh << 32) | xl;
			}
			return true;
		}


		void writeFloat(float x)
		{
			reserveWrite(4);

			byte* b = &_data[_endPos];

			if ((int64_t)b % 4 == 0)
			{
				*(float*)b = x;
			}
			else
			{
				// TODO x是对齐的, 可以优化
				copy4(b, (byte*)&x);
			}

			_endPos += 4;
		}

		bool readFloat(float& out)
		{
			if (!ensureRead(4)) return false;

			float x;
			byte* b = &_data[_beginPos];

			if ((int64_t)b % 4 == 0)
			{
				x = *(float*)b;
			}
			else
			{
				// TODO x是对齐的, 可以优化
				copy4((byte*)&x, b);
			}
			_beginPos += 4;
			out = x;
			return true;
		}

		void writeDouble(double x)
		{
			reserveWrite(8);
			byte* b = &_data[_endPos];

			if ((int64_t)b % 8 == 0)
			{
				*(double*)b = x;
			}
			else
			{
				copy8(b, (byte*)&x);
			}

			_endPos += 8;
		}

		bool readDouble(double& out)
		{
			if (!ensureRead(8)) return false;

			double x;
			byte* b = &_data[_beginPos];

			if ((int64_t)b % 8 == 0)
			{
				x = *(double*)b;
			}
			else
			{
				// TODO x是对齐的, 可以优化
				copy8((byte*)&x, b);
			}

			_beginPos += 8;
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
				std::memcpy(_data + _endPos, x.data(), n);
				_endPos += n;
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
				std::memcpy((void*)x.data(), _data + _beginPos, n);
				_beginPos += n;
			}
			return true;
		}

		void writeBytes(const char* buff, int len)
		{
			int n = len;
			writeSize(n);
			reserveWrite(n);
			std::memcpy(_data + _endPos, buff, n);
			_endPos += n;
		}

		bool readBytesNotCopy(char*& buffer, int& len)
		{
			int n;
			if (!readSize(n) || !ensureRead(n)) return false;
			len = n;
			buffer = (char*)this->getReadData();
			_beginPos += n;
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
			std::memcpy(_data + _endPos, buf, n);
			_endPos += n;
		}

		std::string toString()
		{
			std::string re;
			char hex[2];
			for (int i = _beginPos; i < _endPos; i++)
			{
				if (i != _beginPos)
				{
					re.append(".");
				}
				hex[0] = toHex(_data[i] >> 4);
				hex[1] = toHex(_data[i] & 0xf);
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
			int oldReadIndex = _beginPos;

			int n;
			if (!readSize(n))
			{
				this->_beginPos = oldReadIndex;
				return UnmarshalError::NOT_ENOUGH;
			}
			if (n > maxSize)
			{
				this->_beginPos = oldReadIndex;
				return UnmarshalError::EXCEED_SIZE;
			}
			if (size() < n)
			{
				this->_beginPos = oldReadIndex;
				return UnmarshalError::NOT_ENOUGH;
			}
			body._data = _data;
			body._beginPos = _beginPos;
			_beginPos += n;
			body._endPos = _beginPos;
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
			int remainSize = (_endPos -= _beginPos);

			std::memmove(_data, _data + _beginPos, remainSize);
			_beginPos = 0;
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
			this->_data = data;
			this->_capacity = capacity;
			this->_beginPos = beginPos;
			this->_endPos = endPos;
		}

		ByteBuf(const ByteBuf& o) = delete;
		ByteBuf& operator = (const ByteBuf& o) = delete;
		ByteBuf(ByteBuf&& o) = delete;

		void deleteOldData()
		{
			if (_data != EMPTY_BYTES)
			{

				delete[] _data;
				_data = nullptr;

			}
		}


		byte* getReadData() const
		{
			return _data + _beginPos;
		}

		byte* getWriteData() const
		{
			return _data + _endPos;
		}


		int notCompactWritable()
		{
			return _capacity - _endPos;
		}

		void compactOrResize(int size)
		{
			int remainSize = _endPos - _beginPos;
			int needCapacity = remainSize + size;

			if (needCapacity <= (int)_capacity)
			{
				std::memmove(_data, _data + _beginPos, remainSize);
				_beginPos = 0;
			}
			else
			{
				_capacity = calcNewCapacity(_capacity, needCapacity);
				byte* newBytes = new byte[_capacity];
				std::memcpy(newBytes, _data + _beginPos, remainSize);
				deleteOldData();
				_beginPos = 0;
				_data = newBytes;
			}
			_beginPos = 0;
			_endPos = remainSize;
		}

		inline void reserveWrite(int size)
		{
			if (_endPos + size > (int)_capacity)
			{
				compactOrResize(size);
			}
		}

		inline bool ensureRead(int size)
		{
			return (_beginPos + size <= _endPos);
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