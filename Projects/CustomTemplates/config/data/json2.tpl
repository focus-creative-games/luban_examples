{
{{~if table.is_map_table ~}}
{{~for d in datas~}}
"{{(get_field d table.index).value}}": {
	{{~i = 0~}}
	{{~for f in d.fields~}}
		{{~if f ~}}
		"{{d.impl_type.hierarchy_export_fields[i].name}}" : {{f.json_value}} {{if !for.last }},{{end}}
		{{~end~}}
		{{~i = i + 1~}}
	{{~end~}}
}{{if !for.last }},{{end}}
{{~end~}}
{{~else~}}
	{{~ d = datas[0]~}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
		{{~if f ~}}
		"{{d.impl_type.hierarchy_export_fields[i].name}}": {{f.value}} {{if !for.last}},{{end}}
		{{~end~}}
		{{i = i + 1}}
	{{~end~}}
{{~end~}}
}