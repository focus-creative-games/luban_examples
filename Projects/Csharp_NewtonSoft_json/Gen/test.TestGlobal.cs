
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

public sealed partial class TestGlobal : Luban.BeanBase
{
    public TestGlobal(JToken _buf) 
    {
        JObject _obj = _buf as JObject;
        UnlockEquip = (int)_obj.GetValue("unlock_equip");
        UnlockHero = (int)_obj.GetValue("unlock_hero");
    }

    public static TestGlobal DeserializeTestGlobal(JToken _buf)
    {
        return new test.TestGlobal(_buf);
    }

    public readonly int UnlockEquip;
    public readonly int UnlockHero;


    public const int __ID__ = -12548655;
    public override int GetTypeId() => __ID__;

    public  void ResolveRef(Tables tables)
    {
    }

    public override string ToString()
    {
        return "{ "
        + "unlockEquip:" + UnlockEquip + ","
        + "unlockHero:" + UnlockHero + ","
        + "}";
    }
}
}

