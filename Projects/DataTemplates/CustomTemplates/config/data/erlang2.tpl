%% {{table.full_name}}

-module({{string.replace (string.downcase table.full_name) '.' '_'}})
-export([get/1,get_ids/0])

{{


### 注意!!!! 不要用 to_erlang_literal 这个名字，因为已经在环境里注册了。重复定义会报错。
### 系统实现的 to_erlang_literal 跟 以下to_erlang_literal2 不太一样

func to_erlang_literal2(x)
	if x == null
		ret 'null'
	end
	type = x.type_name
	if (is_simple_literal_data x)
		ret (to_json_literal x) # 简单数据类型使用json的literal函数，没问题
	else
		case type
			when 'text'
				ret (to_localized_text x)
			when 'vector2'
				v = x.value
				ret "{" + string.literal(v.x) + "," + string.literal(v.y) + "}"
			when 'vector3'
				v = x.value
				ret "{" + (string.literal v.x) + "," + string.literal(v.y) + "," + string.literal(v.z) +"}"
			when 'vector4'
				v = x.value
				ret "{" + string.literal(v.x) + "," + string.literal(v.y) + "," + string.literal(v.z) + "," + string.literal(v.w) + "}"
			when 'bean'
				ret 'bean'
			when 'array','list','set'
				ret 'array'
			when 'map'
				ret 'map'
			else
				ret '==== unknown type ' + type + '============'
		end
	end
end

	
}}


{{~if table.is_map_table ~}}
{{~for d in datas~}}
get({{to_erlang_literal2 (get_field d table.index)}}) -> 
#{

	{{~i = 0~}}
	{{~for f in d.fields~}}
	{{d.impl_type.hierarchy_export_fields[i].name}} => {{to_erlang_literal2 f}}{{if !for.last }},{{end}}
	{{~i = i + 1~}}
	{{~end~}}
}.
{{~end~}}

{{
	func get_record_field(x)
		ret (get_field x table.index).value
	end
}}

get_ids() ->
	[{{datas | array.each @get_record_field | array.join ','}}].
{{~else~}}
{{~ d = datas[0]~}}

get() ->
#{
	{{~i = 0~}}
	{{~for f in d.fields~}}
	{{d.impl_type.hierarchy_export_fields[i].name}} => {{to_erlang_literal2 f}}{{if !for.last }},{{end}}
	{{i = i + 1}}
	{{~end~}}
};
get_ids() ->
	[].
{{~end~}}





