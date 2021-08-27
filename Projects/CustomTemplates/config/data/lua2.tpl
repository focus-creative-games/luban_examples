
{{~
func to_text(x)
	if x.is_map
		ret 'map'
	else if x.is_array
		ret 'array'
	else if x.is_list
		ret 'list'
	else if x.is_set
		ret 'set'
	else
		ret x.lua_value
	end
end
~}}

-- {{table.full_name}}

return {
{{~if table.is_map_table ~}}
{{~for d in datas~}}
[{{(get_field d table.index).value}}] = {
	-- {{d.impl_type.full_name}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
		{{~if f ~}}
		{{d.impl_type.hierarchy_export_fields[i].name}} = {{f.lua_value}},
		{{~end~}}
		{{~i = i + 1~}}
	{{~end~}}
},
{{~end~}}
{{~else~}}
	{{~ d = datas[0]~}}
	// {{d.impl_type.full_name}}
	{{~i = 0~}}
	{{~for f in d.fields~}}
		{{~if f ~}}
		// {{d.impl_type.hierarchy_export_fields[i].name}} = {{f.value}}
		{{~end~}}
		{{i = i + 1}}
	{{~end~}}
{{~end~}}
}