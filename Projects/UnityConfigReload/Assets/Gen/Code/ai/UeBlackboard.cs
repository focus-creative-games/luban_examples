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



namespace cfg.ai
{

public sealed partial class UeBlackboard :  ai.Decorator 
{
    public UeBlackboard(ByteBuf _buf)  : base(_buf) 
    {
        NotifyObserver = (ai.ENotifyObserverMode)_buf.ReadInt();
        BlackboardKey = _buf.ReadString();
        KeyQuery = ai.KeyQueryOperator.DeserializeKeyQueryOperator(_buf);
        PostInit();
    }

    public static UeBlackboard DeserializeUeBlackboard(ByteBuf _buf)
    {
        return new ai.UeBlackboard(_buf);
    }

    public ai.ENotifyObserverMode NotifyObserver { get; protected set; }
    public string BlackboardKey { get; protected set; }
    public ai.KeyQueryOperator KeyQuery { get; protected set; }

    public const int __ID__ = -315297507;
    public override int GetTypeId() => __ID__;

    public override void Resolve(Dictionary<string, object> _tables)
    {
        base.Resolve(_tables);
        KeyQuery?.Resolve(_tables);
        PostResolve();
    }

    public override void TranslateText(System.Func<string, string, string> translator)
    {
        base.TranslateText(translator);
        KeyQuery?.TranslateText(translator);
    }

    public void Reload(UeBlackboard reloadData)
    {
        Id = reloadData.Id;
        NodeName = reloadData.NodeName;
        FlowAbortMode = reloadData.FlowAbortMode;
        NotifyObserver = reloadData.NotifyObserver;
        BlackboardKey = reloadData.BlackboardKey;
        if(KeyQuery==null)
        {
            KeyQuery = reloadData.KeyQuery;
        }else
        {
            if(KeyQuery.GetTypeId() == reloadData.KeyQuery.GetTypeId())
            {
                switch (reloadData.KeyQuery.GetTypeId())
                {
                    case ai.IsSet.__ID__:
                        (KeyQuery as ai.IsSet).Reload(reloadData.KeyQuery as ai.IsSet);
                        break;
                    case ai.IsNotSet.__ID__:
                        (KeyQuery as ai.IsNotSet).Reload(reloadData.KeyQuery as ai.IsNotSet);
                        break;
                    case ai.BinaryOperator.__ID__:
                        (KeyQuery as ai.BinaryOperator).Reload(reloadData.KeyQuery as ai.BinaryOperator);
                        break;
                }
            }else
            {
                typeof(UeBlackboard).GetProperty("KeyQuery").SetValue(this,reloadData.KeyQuery);
            }
        }
    }

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "NodeName:" + NodeName + ","
        + "FlowAbortMode:" + FlowAbortMode + ","
        + "NotifyObserver:" + NotifyObserver + ","
        + "BlackboardKey:" + BlackboardKey + ","
        + "KeyQuery:" + KeyQuery + ","
        + "}";
    }
    
    partial void PostInit();
    partial void PostResolve();
}

}