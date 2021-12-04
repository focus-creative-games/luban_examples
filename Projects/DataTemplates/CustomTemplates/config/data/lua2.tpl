
-- {{table.full_name}}

{{

	func pretty_print(x, indent)
		if !x || (is_simple_literal_data2 x)
			ret (to_lua_literal x)
		else
			type = x.type_name
			case type
				when 'bean'
					$arr = ['', '{']
					$i = 0
					for $f in x.fields
						$defField = x.impl_type.hierarchy_fields[$i]
						$i = $i + 1
						if $f && $defField && $defField.need_export
							$arr = (array.add $arr ('\t' + $defField.name + '=' + (pretty_print $f indent + '\t') + ','))
						end
					end
					$arr = array.add $arr '}'
					ret (array.join $arr '\n' + indent)
				when 'array','list','set'
					$arr = ['', '{']
					for $d in x.datas
						$arr = array.add $arr (pretty_print $d indent + '\t') + ','
					end
					$arr = array.add $arr '}'
					ret (array.join $arr '\n' + indent)
				when 'map'
					$arr = ['', '{']
					for $d in x.datas
						$arr = array.add $arr '[' + (to_lua_literal $d.key) + '] = ' + (pretty_print $d.value indent + '\t') + ','
					end
					$arr = array.add $arr '}'
					ret (array.join $arr '\n' + indent)
				else
					ret '========='
			end
		end
	end
}}

return
{{~if table.is_map_table ~}}
{
{{~for d in datas~}}
[{{to_lua_literal (get_field d table.index)}}] = {{pretty_print d ''}},
{{~end~}}
}
{{~else~}}
{{pretty_print datas[0] ''}},
{{~end~}}