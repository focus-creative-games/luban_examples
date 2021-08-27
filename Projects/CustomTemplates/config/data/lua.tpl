
// {{table.name}}

{{for d in datas}}
	// {{d.impl_type.full_name}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
		{{~if f ~}}
		// {{d.impl_type.hierarchy_export_fields[i].name}} = {{f.value}}
		{{~end~}}
		{{i = i + 1}}
	{{~end~}}
{{end}}