using System.Linq;
using Bright.Serialization;

{{
    name = x.name
    namespace = x.namespace
    tables = x.tables

}}
namespace {{namespace}}
{
   
public partial class {{name}}
{
    {{~for table in tables ~}}
{{~if table.comment != '' ~}}
    /// <summary>
    /// {{table.escape_comment}}
    /// </summary>
{{~end~}}
    public {{table.full_name}} {{table.name}} {get; private set;}
    {{~end~}}

    private System.Func<string, ByteBuf> _loader;

    private System.Collections.Generic.Dictionary<string, object> tables;

    public {{name}}(System.Func<string, ByteBuf> loader)
    {
        _loader = loader;
        tables = new System.Collections.Generic.Dictionary<string, object>();
        {{~for table in tables ~}}
        {{table.name}} = new {{table.full_name}}(loader("{{table.output_data_file}}")); 
        tables.Add("{{table.full_name}}", {{table.name}});
        {{~end~}}

        PostInit();
        ResolveAllTable();
        PostResolve();
    }

    public void TranslateText(System.Func<string, string, string> translator)
    {
        {{~for table in tables ~}}
        {{table.name}}.TranslateText(translator); 
        {{~end~}}
    }
    
    partial void PostInit();
    partial void PostResolve();

    private void ResolveAllTable()
    {
        {{~for table in tables ~}}
        {{table.name}}.Resolve(tables);
        {{~end~}}
    }

    private void ReloadOneTable(string reloadTableName)
    {
        if (!tables.Keys.Contains(reloadTableName))
        {
            return;
        }

        switch (reloadTableName)
        {
            {{~for table in tables ~}}
            case "{{table.full_name}}":
                {{table.name}}.Reload(_loader("{{table.full_name}}"));
                break;
            {{~end~}}
        }

    }

    public void Reload(params string[] reloadTableNames)
    {
        foreach (var reloadTableName in reloadTableNames)
        {
            ReloadOneTable(reloadTableName);
        }
        ResolveAllTable();
    }
    

    public void ReloadAll()
    {
        Reload(tables.Keys.ToArray());
    }
}

}