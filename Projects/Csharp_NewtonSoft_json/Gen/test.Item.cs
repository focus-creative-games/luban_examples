
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.test
{

public sealed partial class Item : test.ItemBase
{
    public Item(JToken _buf)  : base(_buf) 
    {
        JObject _obj = _buf as JObject;
        Num = (int)_obj.GetValue("num");
        Price = (int)_obj.GetValue("price");
    }

    public static Item DeserializeItem(JToken _buf)
    {
        return new test.Item(_buf);
    }

    public readonly int Num;
    public readonly int Price;


    public const int __ID__ = -1226641649;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "id:" + Id + ","
        + "name:" + Name + ","
        + "desc:" + Desc + ","
        + "num:" + Num + ","
        + "price:" + Price + ","
        + "}";
    }
}
}

