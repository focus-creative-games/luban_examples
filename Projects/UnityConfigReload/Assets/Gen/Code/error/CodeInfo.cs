//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;
using System.Linq;



namespace cfg.error
{

public sealed partial class CodeInfo :  Bright.Config.BeanBase 
{
    public CodeInfo(ByteBuf _buf) 
    {
        Code = (error.EErrorCode)_buf.ReadInt();
        Key = _buf.ReadString();
        PostInit();
    }

    public static CodeInfo DeserializeCodeInfo(ByteBuf _buf)
    {
        return new error.CodeInfo(_buf);
    }

    public error.EErrorCode Code { get; protected set; }
    public string Key { get; protected set; }

    public const int __ID__ = -1942481535;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        PostResolve();
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
    }

    public void Reload(CodeInfo reloadData)
    {
        Code = reloadData.Code;
        Key = reloadData.Key;
    }

    public override string ToString()
    {
        return "{ "
        + "Code:" + Code + ","
        + "Key:" + Key + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}