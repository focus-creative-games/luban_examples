
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Luban;
using Newtonsoft.Json.Linq;



namespace cfg.ai
{

public sealed partial class BinaryOperator : ai.KeyQueryOperator
{
    public BinaryOperator(JToken _buf)  : base(_buf) 
    {
        JObject _obj = _buf as JObject;
        Oper = (ai.EOperator)(int)_obj.GetValue("oper");
        Data = ai.KeyData.DeserializeKeyData(_obj.GetValue("data"));
    }

    public static BinaryOperator DeserializeBinaryOperator(JToken _buf)
    {
        return new ai.BinaryOperator(_buf);
    }

    public readonly ai.EOperator Oper;
    public readonly ai.KeyData Data;


    public const int __ID__ = -979891605;
    public override int GetTypeId() => __ID__;

    public override void ResolveRef(Tables tables)
    {
        base.ResolveRef(tables);
        Data?.ResolveRef(tables);
    }

    public override string ToString()
    {
        return "{ "
        + "oper:" + Oper + ","
        + "data:" + Data + ","
        + "}";
    }
}
}

