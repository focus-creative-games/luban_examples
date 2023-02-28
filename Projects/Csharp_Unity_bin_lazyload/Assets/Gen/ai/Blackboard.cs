//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.ai
{

public sealed partial class Blackboard :  Bright.Config.BeanBase 
{
    public Blackboard(ByteBuf _buf) 
    {
        Name = _buf.ReadString();
        Desc = _buf.ReadString();
        ParentName = _buf.ReadString();
        {int n0 = System.Math.Min(_buf.ReadSize(), _buf.Size);Keys = new System.Collections.Generic.List<ai.BlackboardKey>(n0);for(var i0 = 0 ; i0 < n0 ; i0++) { ai.BlackboardKey _e0;  _e0 = ai.BlackboardKey.DeserializeBlackboardKey(_buf); Keys.Add(_e0);}}
        PostInit();
    }

    public static Blackboard DeserializeBlackboard(ByteBuf _buf)
    {
        return new ai.Blackboard(_buf);
    }

    public string Name { get; private set; }
    public string Desc { get; private set; }
    public string ParentName { get; private set; }
    public ai.Blackboard ParentName_Ref { get; private set; }
    public System.Collections.Generic.List<ai.BlackboardKey> Keys { get; private set; }

    public const int __ID__ = 1576193005;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        this.ParentName_Ref = (_tables["ai.TbBlackboard"] as ai.TbBlackboard).GetOrDefault(ParentName);
        foreach(var _e in Keys) { _e?.Resolve(_tables); }
        PostResolve();
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var _e in Keys) { _e?.TranslateText(translator); }
    }

    public override string ToString()
    {
        return "{ "
        + "Name:" + Name + ","
        + "Desc:" + Desc + ","
        + "ParentName:" + ParentName + ","
        + "Keys:" + Bright.Common.StringUtil.CollectionToString(Keys) + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}