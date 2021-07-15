
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.common
{
   
public sealed partial class GlobalConfig :  Bright.Config.BeanBase 
{
    public GlobalConfig(ByteBuf _buf) 
    {
        BagCapacity = _buf.ReadInt();
        BagCapacitySpecial = _buf.ReadInt();
        BagTempExpendableCapacity = _buf.ReadInt();
        BagTempToolCapacity = _buf.ReadInt();
        BagInitCapacity = _buf.ReadInt();
        QuickBagCapacity = _buf.ReadInt();
        ClothBagCapacity = _buf.ReadInt();
        ClothBagInitCapacity = _buf.ReadInt();
        ClothBagCapacitySpecial = _buf.ReadInt();
        if(_buf.ReadBool()){ BagInitItemsDropId = _buf.ReadInt(); } else { BagInitItemsDropId = null; }
        MailBoxCapacity = _buf.ReadInt();
        DamageParamC = _buf.ReadFloat();
        DamageParamE = _buf.ReadFloat();
        DamageParamF = _buf.ReadFloat();
        DamageParamD = _buf.ReadFloat();
        RoleSpeed = _buf.ReadFloat();
        MonsterSpeed = _buf.ReadFloat();
        InitEnergy = _buf.ReadInt();
        InitViality = _buf.ReadInt();
        MaxViality = _buf.ReadInt();
        PerVialityRecoveryTime = _buf.ReadInt();
    }

    public GlobalConfig(int bag_capacity, int bag_capacity_special, int bag_temp_expendable_capacity, int bag_temp_tool_capacity, int bag_init_capacity, int quick_bag_capacity, int cloth_bag_capacity, int cloth_bag_init_capacity, int cloth_bag_capacity_special, int? bag_init_items_drop_id, int mail_box_capacity, float damage_param_c, float damage_param_e, float damage_param_f, float damage_param_d, float role_speed, float monster_speed, int init_energy, int init_viality, int max_viality, int per_viality_recovery_time ) 
    {
        this.BagCapacity = bag_capacity;
        this.BagCapacitySpecial = bag_capacity_special;
        this.BagTempExpendableCapacity = bag_temp_expendable_capacity;
        this.BagTempToolCapacity = bag_temp_tool_capacity;
        this.BagInitCapacity = bag_init_capacity;
        this.QuickBagCapacity = quick_bag_capacity;
        this.ClothBagCapacity = cloth_bag_capacity;
        this.ClothBagInitCapacity = cloth_bag_init_capacity;
        this.ClothBagCapacitySpecial = cloth_bag_capacity_special;
        this.BagInitItemsDropId = bag_init_items_drop_id;
        this.MailBoxCapacity = mail_box_capacity;
        this.DamageParamC = damage_param_c;
        this.DamageParamE = damage_param_e;
        this.DamageParamF = damage_param_f;
        this.DamageParamD = damage_param_d;
        this.RoleSpeed = role_speed;
        this.MonsterSpeed = monster_speed;
        this.InitEnergy = init_energy;
        this.InitViality = init_viality;
        this.MaxViality = max_viality;
        this.PerVialityRecoveryTime = per_viality_recovery_time;
    }

    public static GlobalConfig DeserializeGlobalConfig(ByteBuf _buf)
    {
        return new common.GlobalConfig(_buf);
    }

    public readonly int BagCapacity;
    public readonly int BagCapacitySpecial;
    public readonly int BagTempExpendableCapacity;
    public readonly int BagTempToolCapacity;
    public readonly int BagInitCapacity;
    public readonly int QuickBagCapacity;
    public readonly int ClothBagCapacity;
    public readonly int ClothBagInitCapacity;
    public readonly int ClothBagCapacitySpecial;
    public readonly int? BagInitItemsDropId;
    public bonus.DropInfo BagInitItemsDropId_Ref;
    public readonly int MailBoxCapacity;
    public readonly float DamageParamC;
    public readonly float DamageParamE;
    public readonly float DamageParamF;
    public readonly float DamageParamD;
    public readonly float RoleSpeed;
    public readonly float MonsterSpeed;
    public readonly int InitEnergy;
    public readonly int InitViality;
    public readonly int MaxViality;
    public readonly int PerVialityRecoveryTime;

    public const int ID = -848234488;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        this.BagInitItemsDropId_Ref = this.BagInitItemsDropId != null ? (_tables["bonus.TbDrop"] as  bonus.TbDrop).GetOrDefault(BagInitItemsDropId.Value) : null;
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "BagCapacity:" + BagCapacity + ","
        + "BagCapacitySpecial:" + BagCapacitySpecial + ","
        + "BagTempExpendableCapacity:" + BagTempExpendableCapacity + ","
        + "BagTempToolCapacity:" + BagTempToolCapacity + ","
        + "BagInitCapacity:" + BagInitCapacity + ","
        + "QuickBagCapacity:" + QuickBagCapacity + ","
        + "ClothBagCapacity:" + ClothBagCapacity + ","
        + "ClothBagInitCapacity:" + ClothBagInitCapacity + ","
        + "ClothBagCapacitySpecial:" + ClothBagCapacitySpecial + ","
        + "BagInitItemsDropId:" + BagInitItemsDropId + ","
        + "MailBoxCapacity:" + MailBoxCapacity + ","
        + "DamageParamC:" + DamageParamC + ","
        + "DamageParamE:" + DamageParamE + ","
        + "DamageParamF:" + DamageParamF + ","
        + "DamageParamD:" + DamageParamD + ","
        + "RoleSpeed:" + RoleSpeed + ","
        + "MonsterSpeed:" + MonsterSpeed + ","
        + "InitEnergy:" + InitEnergy + ","
        + "InitViality:" + InitViality + ","
        + "MaxViality:" + MaxViality + ","
        + "PerVialityRecoveryTime:" + PerVialityRecoveryTime + ","
        + "}";
    }
    }

}

