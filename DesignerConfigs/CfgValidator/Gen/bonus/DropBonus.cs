
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;
using System.Text.Json;



namespace cfg.bonus
{
   
public sealed partial class DropBonus :  bonus.Bonus 
{
    public DropBonus(JsonElement _buf)  : base(_buf) 
    {
        Id = _buf.GetProperty("id").GetInt32();
    }

    public DropBonus(int id )  : base() 
    {
        this.Id = id;
    }

    public static DropBonus DeserializeDropBonus(JsonElement _buf)
    {
        return new bonus.DropBonus(_buf);
    }

    public readonly int Id;
    public bonus.DropInfo Id_Ref;

    public const int ID = 1959868225;
    public override int GetTypeId() => ID;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        this.Id_Ref = (_tables["bonus.TbDrop"] as bonus.TbDrop).GetOrDefault(Id);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "}";
    }
    }
}

