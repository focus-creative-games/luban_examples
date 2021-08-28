
-- {{table.full_name}}

return {
{{~if table.is_map_table ~}}
{{~for d in datas~}}
[{{to_lua_literal (get_field d table.index)}}] = {
	-- {{d.impl_type.full_name}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
	{{d.impl_type.hierarchy_export_fields[i].name}} = {{to_lua_literal f}},
	{{~i = i + 1~}}
	{{~end~}}
},
{{~end~}}
{{~else~}}
	{{~ d = datas[0]~}}
	// {{d.impl_type.full_name}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
	{{d.impl_type.hierarchy_export_fields[i].name}} = {{to_lua_literal f}},
	{{i = i + 1}}
	{{~end~}}
{{~end~}}
}