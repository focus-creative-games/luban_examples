
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using Bright.Serialization;
using System.Collections.Generic;



namespace cfg.mail
{
   
public sealed partial class GlobalMail :  Bright.Config.BeanBase 
{
    public GlobalMail(ByteBuf _buf) 
    {
        Id = _buf.ReadInt();
        Title = _buf.ReadString();
        Sender = _buf.ReadString();
        Content = _buf.ReadString();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);Award = new System.Collections.Generic.List<int>(n);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); Award.Add(_e);}}
        AllServer = _buf.ReadBool();
        {int n = System.Math.Min(_buf.ReadSize(), _buf.Size);ServerList = new System.Collections.Generic.List<int>(n);for(var i = 0 ; i < n ; i++) { int _e;  _e = _buf.ReadInt(); ServerList.Add(_e);}}
        Platform = _buf.ReadString();
        Channel = _buf.ReadString();
        MinMaxLevel = condition.MinMaxLevel.DeserializeMinMaxLevel(_buf);
        RegisterTime = condition.TimeRange.DeserializeTimeRange(_buf);
        MailTime = condition.TimeRange.DeserializeTimeRange(_buf);
    }

    public GlobalMail(int id, string title, string sender, string content, System.Collections.Generic.List<int> award, bool all_server, System.Collections.Generic.List<int> server_list, string platform, string channel, condition.MinMaxLevel min_max_level, condition.TimeRange register_time, condition.TimeRange mail_time ) 
    {
        this.Id = id;
        this.Title = title;
        this.Sender = sender;
        this.Content = content;
        this.Award = award;
        this.AllServer = all_server;
        this.ServerList = server_list;
        this.Platform = platform;
        this.Channel = channel;
        this.MinMaxLevel = min_max_level;
        this.RegisterTime = register_time;
        this.MailTime = mail_time;
    }

    public static GlobalMail DeserializeGlobalMail(ByteBuf _buf)
    {
        return new mail.GlobalMail(_buf);
    }

    public readonly int Id;
    public readonly string Title;
    public readonly string Sender;
    public readonly string Content;
    public readonly System.Collections.Generic.List<int> Award;
    public readonly bool AllServer;
    public readonly System.Collections.Generic.List<int> ServerList;
    public readonly string Platform;
    public readonly string Channel;
    public readonly condition.MinMaxLevel MinMaxLevel;
    public readonly condition.TimeRange RegisterTime;
    public readonly condition.TimeRange MailTime;

    public const int ID = -287571791;
    public override int GetTypeId() => ID;

    public  void Resolve(Dictionary<string, object> _tables)
    {
        MinMaxLevel?.Resolve(_tables);
        RegisterTime?.Resolve(_tables);
        MailTime?.Resolve(_tables);
        OnResolveFinish(_tables);
    }

    partial void OnResolveFinish(Dictionary<string, object> _tables);

    public override string ToString()
    {
        return "{ "
        + "Id:" + Id + ","
        + "Title:" + Title + ","
        + "Sender:" + Sender + ","
        + "Content:" + Content + ","
        + "Award:" + Bright.Common.StringUtil.CollectionToString(Award) + ","
        + "AllServer:" + AllServer + ","
        + "ServerList:" + Bright.Common.StringUtil.CollectionToString(ServerList) + ","
        + "Platform:" + Platform + ","
        + "Channel:" + Channel + ","
        + "MinMaxLevel:" + MinMaxLevel + ","
        + "RegisterTime:" + RegisterTime + ","
        + "MailTime:" + MailTime + ","
        + "}";
    }
    }

}

