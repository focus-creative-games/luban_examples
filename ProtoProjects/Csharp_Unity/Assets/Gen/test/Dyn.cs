//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;

namespace proto.test
{

    public  abstract class Dyn :  Bright.Serialization.BeanBase 
    {
        public Dyn()
        {
        }

        public Dyn(Bright.Common.NotNullInitialization _) 
        {
        }

        public static void SerializeDyn(ByteBuf _buf, Dyn x)
        {
            if (x != null)
            {
                _buf.WriteInt(x.GetTypeId());
                x.Serialize(_buf);
            }
            else
            {
                _buf.WriteInt(0);
            }
        }

        public static Dyn DeserializeDyn(ByteBuf _buf)
        {
           test.Dyn x;
            switch (_buf.ReadInt())
            {
                case 0 : return null;
                case test.Child2.__ID__: x = new test.Child2(); break;
                case test.Child31.__ID__: x = new test.Child31(); break;
                case test.Child32.__ID__: x = new test.Child32(); break;
                default: throw new SerializationException();
            }
            x.Deserialize(_buf);
            return x;
        }

         public int A1;


    }

}
