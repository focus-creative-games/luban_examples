
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;

namespace cfg.test
{
   
public sealed partial class TbSingleton
{

     private readonly test.DemoSingletonType _data;

    public TbSingleton(ByteBuf _buf)
    {
        int n = _buf.ReadSize();
        if (n != 1) throw new SerializationException("table mode=one, but size != 1");
        _data = test.DemoSingletonType.DeserializeDemoSingletonType(_buf);
    }


     public int Id => _data.Id;
     public string Name => _data.Name;
     public test.DemoDynamic Date => _data.Date;

    public void Resolve(Dictionary<string, object> _tables)
    {
        _data.Resolve(_tables);
        OnResolveFinish(_tables);
    }


    partial void OnResolveFinish(Dictionary<string, object> _tables);
}

}