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

public abstract partial class Clazz :  Bright.Config.BeanBase 
{
    public Clazz(ByteBuf _buf) 
    {
        Name = _buf.ReadString();
        Desc = _buf.ReadString();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Parents = new System.Collections.Generic.List<blueprint.Clazz>(n);for(var i = 0 ; i < n ; i++) { blueprint.Clazz _e;  _e = blueprint.Clazz.DeserializeClazz(_buf); Parents.Add(_e);}}
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Methods = new System.Collections.Generic.List<blueprint.Method>(n);for(var i = 0 ; i < n ; i++) { blueprint.Method _e;  _e = blueprint.Method.DeserializeMethod(_buf); Methods.Add(_e);}}
        PostInit();
    }

    public static Clazz DeserializeClazz(ByteBuf _buf)
    {
        switch (_buf.ReadInt())
        {
            case blueprint.Interface.__ID__: return new blueprint.Interface(_buf);
            case blueprint.NormalClazz.__ID__: return new blueprint.NormalClazz(_buf);
            case blueprint.EnumClazz.__ID__: return new blueprint.EnumClazz(_buf);
            default: throw new SerializationException();
        }
    }

    public string Name { get; protected set; }
    public string Desc { get; protected set; }
    public System.Collections.Generic.List<blueprint.Clazz> Parents { get; protected set; }
    public System.Collections.Generic.List<blueprint.Method> Methods { get; protected set; }


    public virtual void Resolve(Dictionary<string, object> _tables)
    {
        foreach(var _e in Parents) { _e?.Resolve(_tables); }
        foreach(var _e in Methods) { _e?.Resolve(_tables); }
        PostResolve();
    }

    public virtual void TranslateText(System.Func<string, string, string> translator)
    {
        foreach(var _e in Parents) { _e?.TranslateText(translator); }
        foreach(var _e in Methods) { _e?.TranslateText(translator); }
    }

    public void Reload(Clazz reloadData)
    {
        Name = reloadData.Name;
        Desc = reloadData.Desc;
        if(Parents==null)
        {
            Parents = reloadData.Parents;
        }else
        {
            Parents.Capacity = reloadData.Parents.Count;
            for (int i = 0; i < reloadData.Parents.Count; i++)
            {
                if(Parents[i]!=null && Parents[i].GetTypeId() == reloadData.Parents[i].GetTypeId())
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
        if(Methods==null)
        {
            Methods = reloadData.Methods;
        }else
        {
            Methods.Capacity = reloadData.Methods.Count;
            for (int i = 0; i < reloadData.Methods.Count; i++)
            {
                if(Methods[i]!=null && Methods[i].GetTypeId() == reloadData.Methods[i].GetTypeId())
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