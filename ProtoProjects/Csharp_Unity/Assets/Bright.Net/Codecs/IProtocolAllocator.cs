namespace Bright.Net.Codecs
{
    public interface IProtocolAllocator
    {
        Protocol Alloc(int typeId);

        void Free(Protocol proto);
    }
}
