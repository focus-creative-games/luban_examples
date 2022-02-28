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



namespace cfg.blueprint
{

public sealed partial class Interface :  blueprint.Clazz 
{
    public Interface(ByteBuf _buf)  : base(_buf) 
    {
        PostInit();
    }

    public static Interface DeserializeInterface(ByteBuf _buf)
    {
        return new blueprint.Interface(_buf);
    }


    public const int __ID__ = 2114170750;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        PostResolve();
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
    }

    public void Reload(Interface reloadData)
    {
        Name = reloadData.Name;
        Desc = reloadData.Desc;
        //list
        if(Parents==null)
        {
            Parents = reloadData.Parents;
        }else
        {
            Parents.Capacity = reloadData.Parents.Count;
            for (int i = 0; i < reloadData.Parents.Count; i++)
            {
                //list is_dynamic
                if(Parents[i].GetTypeId() == reloadData.Parents[i].GetTypeId())
                {
                    switch (reloadData.Parents[i].GetTypeId())
                    {
                        case blueprint.Interface.__ID__:
                            (Parents[i] as blueprint.Interface).Reload(reloadData.Parents[i] as blueprint.Interface);
                            break;
                        case blueprint.NormalClazz.__ID__:
                            (Parents[i] as blueprint.NormalClazz).Reload(reloadData.Parents[i] as blueprint.NormalClazz);
                            break;
                        case blueprint.EnumClazz.__ID__:
                            (Parents[i] as blueprint.EnumClazz).Reload(reloadData.Parents[i] as blueprint.EnumClazz);
                            break;
                    }
                }else
                {
                    Parents[i] = reloadData.Parents[i];
                }
            }

        }
        //list
        if(Methods==null)
        {
            Methods = reloadData.Methods;
        }else
        {
            Methods.Capacity = reloadData.Methods.Count;
            for (int i = 0; i < reloadData.Methods.Count; i++)
            {
                //list is_dynamic
                if(Methods[i].GetTypeId() == reloadData.Methods[i].GetTypeId())
                {
                    switch (reloadData.Methods[i].GetTypeId())
                    {
                        case blueprint.AbstraceMethod.__ID__:
                            (Methods[i] as blueprint.AbstraceMethod).Reload(reloadData.Methods[i] as blueprint.AbstraceMethod);
                            break;
                        case blueprint.ExternalMethod.__ID__:
                            (Methods[i] as blueprint.ExternalMethod).Reload(reloadData.Methods[i] as blueprint.ExternalMethod);
                            break;
                        case blueprint.BlueprintMethod.__ID__:
                            (Methods[i] as blueprint.BlueprintMethod).Reload(reloadData.Methods[i] as blueprint.BlueprintMethod);
                            break;
                    }
                }else
                {
                    Methods[i] = reloadData.Methods[i];
                }
            }

        }
    }

    public override string ToString()
    {
        return "{ "
        + "Name:" + Name + ","
        + "Desc:" + Desc + ","
        + "Parents:" + Bright.Common.StringUtil.CollectionToString(Parents) + ","
        + "Methods:" + Bright.Common.StringUtil.CollectionToString(Methods) + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
