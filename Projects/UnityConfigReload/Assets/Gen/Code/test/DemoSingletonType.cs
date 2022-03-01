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



namespace cfg.test
{

public sealed partial class DemoSingletonType :  Bright.Config.BeanBase 
{
    public DemoSingletonType(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        Name_l10n_key = _buf.ReadString(); Name = _buf.ReadString();
        Date = test.DemoDynamic.DeserializeDemoDynamic(_buf);
        PostInit();
    }

    public static DemoSingletonType DeserializeDemoSingletonType(ByteBuf _buf)
    {
        return new test.DemoSingletonType(_buf);
    }

    public int Id { get; protected set; }
    public string Name { get; protected set; }
    //field.gen_text_key
    public string Name_l10n_key { get; protected set; }
    public test.DemoDynamic Date { get; protected set; }

    public const int __ID__ = 539196998;
    public override int GetTypeId() => __ID__;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        Date?.Resolve(_tables);
        PostResolve();
    }

    public  void TranslateText(System.Func<string, string, string> translator)
    {
        Name = translator(Name_l10n_key, Name);
        Date?.TranslateText(translator);
    }

    public void Reload(DemoSingletonType reloadData)
    {
        Id = reloadData.Id;
        Name = reloadData.Name;
        if(Date==null)
        {
            Date = reloadData.Date;
        }else
        {
            if(Date.GetTypeId() == reloadData.Date.GetTypeId())
            {
                switch (reloadData.Date.GetTypeId())
                {
                    case test.DemoD2.__ID__:
                        (Date as test.DemoD2).Reload(reloadData.Date as test.DemoD2);
                        break;
                    case test.DemoE1.__ID__:
                        (Date as test.DemoE1).Reload(reloadData.Date as test.DemoE1);
                        break;
                    case test.login.RoleInfo.__ID__:
                        (Date as test.login.RoleInfo).Reload(reloadData.Date as test.login.RoleInfo);
                        break;
                    case test.DemoD5.__ID__:
                        (Date as test.DemoD5).Reload(reloadData.Date as test.DemoD5);
                        break;
                }
            }else
            {
                typeof(DemoSingletonType).GetProperty("Date").SetValue(this,reloadData.Date);
            }
        }
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Name:" + Name + ","
        + "Date:" + Date + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}
