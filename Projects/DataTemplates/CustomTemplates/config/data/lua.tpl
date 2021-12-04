
return
{{~if table.is_map_table ~}}
{
{{~for d in datas~}}
[{{to_lua_literal (get_field d table.index)}}] = {{to_lua_literal d}},
{{~end~}}
}
{{~else~}}
{{~ to_lua_literal datas[0] ~}}
{{~end~}}