//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;

namespace proto
{
    public static class ProtocolStub
    {
        public static System.Collections.Generic.Dictionary<int, Bright.Net.Codecs.ProtocolCreator> Factories { get; } = new System.Collections.Generic.Dictionary<int, Bright.Net.Codecs.ProtocolCreator>
        {
            [test.TestProto1.__ID__] = () => new test.TestProto1(),
            [test.Foo.__ID__] = () => new test.Foo(),

            [test.TestRpc.__ID__] = () => new test.TestRpc(),
            [test.TestRpc2.__ID__] = () => new test.TestRpc2(),
        };
    }

}
