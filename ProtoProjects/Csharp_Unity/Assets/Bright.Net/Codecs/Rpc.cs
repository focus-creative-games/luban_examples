using Bright.Serialization;
using Bright.Threading;

namespace Bright.Net.Codecs
{
    public abstract class Rpc : Protocol
    {
        private readonly static AtomicLong s_nextRpcId = new AtomicLong();

        public static long AllocNextRpcId() => s_nextRpcId.IncrementAndGet();
        
        public long RpcId { get; protected set; }

        public bool IsRequest { get; protected set; }

        public abstract BeanBase ObjArg { get; protected set; }

        public abstract BeanBase ObjRes { get; protected set; }

        public void InitAsObjRequest(BeanBase arg)
        {
            RpcId = AllocNextRpcId();
            IsRequest = true;
            ObjArg = arg;
        }

        public void InitAsObjResponse(long rpcId, BeanBase res)
        {
            RpcId = rpcId;
            IsRequest = false;
            ObjRes = res;
        }
    }

    public abstract class Rpc<TArg, TRes> : Rpc where TArg : BeanBase, new() where TRes : BeanBase, new()
    {
        public override BeanBase ObjArg { get => Arg; protected set => Arg = (TArg)value; }

        public override BeanBase ObjRes { get => Res; protected set => Res = (TRes)value; }

        public TArg Arg { get; set; }

        public TRes Res { get; set; }

        public void InitAsRequest(TArg arg)
        {
            RpcId = AllocNextRpcId();
            IsRequest = true;
            Arg = arg;
        }

        public void InitAsResponse(long rpcId, TRes res)
        {
            RpcId = rpcId;
            IsRequest = false;
            ObjRes = res;
        }

        public sealed override void Serialize(ByteBuf buf)
        {
            if (IsRequest)
            {
                buf.WriteLong((RpcId << 1));
                Arg.Serialize(buf);
            }
            else
            {
                buf.WriteLong((RpcId << 1) | 1L);
                Res.Serialize(buf);
            }
        }

        public sealed override void Deserialize(ByteBuf buf)
        {
            long rpcIdAndRequest = buf.ReadLong();
            RpcId = rpcIdAndRequest >> 1;
            IsRequest = (rpcIdAndRequest & 0x1L) == 0;
            if (IsRequest)
            {
                var a = new TArg();
                a.Deserialize(buf);
                Arg = a;
            }
            else
            {
                var r = new TRes();
                r.Deserialize(buf);
                Res = r;
            }
        }
    }
}
