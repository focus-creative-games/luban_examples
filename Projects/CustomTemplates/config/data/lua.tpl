
return
{{~if table.is_map_table ~}}
{
{{~for d in datas~}}
[{{(get_field d table.index).value}}] = {{d.lua_value}},
{{~end~}}
}
{{~else~}}
	{{~ datas[0].lua_value ~}}
{{~end~}}