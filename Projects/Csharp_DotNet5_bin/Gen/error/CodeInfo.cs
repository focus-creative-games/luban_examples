
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.error
{

public sealed partial class CodeInfo :  Bright.Config.BeanBase 
{
    public CodeInfo(ByteBuf _buf) 
    {
        Code = (error.EErrorCode)_buf.ReadInt();
        Key = _buf.ReadString();
    }

    public CodeInfo(error.EErrorCode code, string key ) 
    {
        this.Code = code;
        this.Key = key;
    }

    public static CodeInfo DeserializeCodeInfo(ByteBuf _buf)
    {
        return new error.CodeInfo(_buf);
    }

    public readonly error.EErrorCode Code;
    public readonly string Key;

    public const int ID = -1942481535;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Code:" + Code + ","
        + "Key:" + Key + ","
        + "}";
    }
    }

}
