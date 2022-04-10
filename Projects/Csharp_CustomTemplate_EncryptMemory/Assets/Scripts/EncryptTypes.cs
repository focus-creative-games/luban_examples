using System;

namespace Scripts
{
    public abstract class EncryptTypeBase<T, KVType, DType> where T : struct
                                                            where KVType : struct
                                                            where DType : EncryptTypeBase<T, KVType, DType>, new()
    {
        private static readonly int    _arraySize = 3;
        private static          KVType _key;
        private static          bool   _isInited;

        private KVType[] _values;
        private int      _index;

        protected abstract KVType GetInitKey(int     seed);
        protected abstract T      DecodeValue(KVType value, KVType key);
        protected abstract KVType EncodeValue(T      v,     KVType key);

        public override bool   Equals(object obj) => base.Equals(obj);
        public override int    GetHashCode()      => GetValue().GetHashCode();
        public override string ToString()         => GetValue().ToString();

        public EncryptTypeBase()
        {
            _values = new KVType[_arraySize];
            _index  = 0;

            if(!_isInited)
            {
                Random rand = new Random();
                int    seed = rand.Next(1, int.MaxValue);
                _key      = GetInitKey(seed);
                _isInited = true;
            }
        }

        public T GetValue()
        {
            T v = DecodeValue(_key, _values[_index]);
            return v;
        }

        public void SetValue(T v)
        {
            if(++_index == _arraySize) _index = 0;
            _values[_index] = EncodeValue(v, _key);
        }

        protected static DType Box(T v)
        {
            DType d = new DType();
            d.SetValue(v);
            return d;
        }

        protected static T Unbox(DType d)
        {
            if(d.Equals(null)) return default(T);
            return d.GetValue();
        }
    }

    public class EncryptByte : EncryptTypeBase<byte, byte, EncryptByte>
    {
        protected override byte GetInitKey(int rand) => (byte) rand;

        protected override byte DecodeValue(byte value, byte key) => (byte) (value ^ key);

        protected override byte EncodeValue(byte v, byte key) => (byte) (v ^ key);

        public static implicit operator EncryptByte(byte v) => Box(v);

        public static implicit operator byte(EncryptByte d) => Unbox(d);

        public int CompareTo(EncryptByte other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptSByte : EncryptTypeBase<sbyte, sbyte, EncryptSByte>
    {
        protected override sbyte GetInitKey(int rand) => (sbyte) rand;

        protected override sbyte DecodeValue(sbyte value, sbyte key) => (sbyte) (value ^ key);

        protected override sbyte EncodeValue(sbyte v, sbyte key) => (sbyte) (v ^ key);

        public static implicit operator EncryptSByte(sbyte v) => Box(v);

        public static implicit operator sbyte(EncryptSByte d) => Unbox(d);

        public int CompareTo(EncryptSByte other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptShort : EncryptTypeBase<short, short, EncryptShort>
    {
        protected override short GetInitKey(int rand) => (short) rand;

        protected override short DecodeValue(short value, short key) => (short) (value ^ key);

        protected override short EncodeValue(short v, short key) => (short) (v ^ key);

        public static implicit operator EncryptShort(short v) => Box(v);

        public static implicit operator short(EncryptShort d) => Unbox(d);

        public int CompareTo(EncryptShort other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptUShort : EncryptTypeBase<ushort, ushort, EncryptUShort>
    {
        protected override ushort GetInitKey(int rand) => (ushort) rand;

        protected override ushort DecodeValue(ushort value, ushort key) => (ushort) (value ^ key);

        protected override ushort EncodeValue(ushort v, ushort key) => (ushort) (v ^ key);

        public static implicit operator EncryptUShort(ushort v) => Box(v);

        public static implicit operator ushort(EncryptUShort d) => Unbox(d);

        public int CompareTo(EncryptUShort other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptInt : EncryptTypeBase<int, int, EncryptInt>
    {
        protected override int GetInitKey(int rand) => rand;

        protected override int DecodeValue(int value, int key) => value ^ key;

        protected override int EncodeValue(int v, int key) => v ^ key;

        public static implicit operator EncryptInt(int v) => Box(v);

        public static implicit operator int(EncryptInt d) => Unbox(d);

        public int CompareTo(EncryptInt other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptUInt : EncryptTypeBase<uint, uint, EncryptUInt>
    {
        protected override uint GetInitKey(int rand) => (uint) rand;

        protected override uint DecodeValue(uint value, uint key) => value ^ key;

        protected override uint EncodeValue(uint v, uint key) => v ^ key;

        public static implicit operator EncryptUInt(uint v) => Box(v);

        public static implicit operator uint(EncryptUInt d) => Unbox(d);

        public int CompareTo(EncryptUInt other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptLong : EncryptTypeBase<long, long, EncryptLong>
    {
        protected override long GetInitKey(int rand) => rand;

        protected override long DecodeValue(long value, long key) => value ^ key;

        protected override long EncodeValue(long v, long key) => v ^ key;

        public static implicit operator EncryptLong(long v) => Box(v);

        public static implicit operator long(EncryptLong d) => Unbox(d);

        public int CompareTo(EncryptLong other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptULong : EncryptTypeBase<ulong, ulong, EncryptULong>
    {
        protected override ulong GetInitKey(int rand) => (ulong) rand;

        protected override ulong DecodeValue(ulong value, ulong key) => value ^ key;

        protected override ulong EncodeValue(ulong v, ulong key) => v ^ key;

        public static implicit operator EncryptULong(ulong v) => Box(v);

        public static implicit operator ulong(EncryptULong d) => Unbox(d);

        public int CompareTo(EncryptULong other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptFloat : EncryptTypeBase<float, uint, EncryptFloat>
    {
        protected override uint GetInitKey(int rand) => (uint) rand;

        protected override float DecodeValue(uint value, uint key)
        {
            value ^= key;
            byte[] bytes = BitConverter.GetBytes(value);
            float  v     = BitConverter.ToSingle(bytes, 0);
            return v;
        }

        protected override uint EncodeValue(float v, uint key)
        {
            byte[] bytes = BitConverter.GetBytes(v);
            uint   value = BitConverter.ToUInt32(bytes, 0);
            value ^= key;
            return value;
        }

        public static implicit operator EncryptFloat(float v) => Box(v);

        public static implicit operator float(EncryptFloat d) => Unbox(d);

        public int CompareTo(EncryptFloat other) => GetValue().CompareTo(other.GetValue());
    }

    public class EncryptDouble : EncryptTypeBase<double, ulong, EncryptDouble>
    {
        protected override ulong GetInitKey(int rand) => (ulong) rand;

        protected override double DecodeValue(ulong value, ulong key)
        {
            value ^= key;
            byte[] bytes = BitConverter.GetBytes(value);
            double v     = BitConverter.ToDouble(bytes, 0);
            return v;
        }

        protected override ulong EncodeValue(double v, ulong key)
        {
            byte[] bytes = BitConverter.GetBytes(v);
            ulong  value = BitConverter.ToUInt64(bytes, 0);
            value ^= key;
            return value;
        }

        public static implicit operator EncryptDouble(double v) => Box(v);

        public static implicit operator double(EncryptDouble d) => Unbox(d);

        public int CompareTo(EncryptDouble other) => GetValue().CompareTo(other.GetValue());
    }
}