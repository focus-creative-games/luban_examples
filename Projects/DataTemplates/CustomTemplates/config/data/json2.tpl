{
{{~if table.is_map_table ~}}
{{~for d in datas~}}
{{to_json_property_name (get_field d table.index)}}: {
	{{~i = 0~}}
	{{~for f in d.fields~}}
	"{{d.impl_type.hierarchy_export_fields[i].name}}" : {{to_json_literal f}}{{if !for.last }},{{end}}
	{{~i = i + 1~}}
	{{~end~}}
}{{if !for.last }},{{end}}
{{~end~}}
{{~else~}}
	{{~ d = datas[0]~}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
	"{{d.impl_type.hierarchy_export_fields[i].name}}": {{to_json_literal f}}{{if !for.last}},{{end}}
	{{i = i + 1}}
	{{~end~}}
{{~end~}}
}