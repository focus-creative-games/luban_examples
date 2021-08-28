{{~if table.is_map_table ~}}
{
{{~for d in datas~}}
{{to_json_property_name (get_field d table.index)}}: {{to_json_literal d}} {{if !for.last }},{{end}}
{{~end~}}
}
{{~else~}}
{{~ to_json_literal datas[0]~}}
{{~end~}}
