{
{{~if table.is_map_table ~}}
{
{{~for d in datas~}}
"{{(get_field d table.index).value}}": {{d.json_value}} {{if !for.last }},{{end}}
{{~end~}}
}
{{~else~}}
{{~datas[0].json_value~}}
{{~end~}}
