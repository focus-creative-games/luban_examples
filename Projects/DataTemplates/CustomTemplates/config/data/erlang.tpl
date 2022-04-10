
%% {{table.full_name}}

{{~if table.is_map_table ~}}
{{~for d in datas~}}
get({{to_erlang_literal (get_field d table.index)}}) -> {{to_erlang_literal d}}.

{{~end~}}
{{~else~}}
{{~ d = datas[0]~}}
get() -> {{to_erlang_literal d}}.
{{~end~}}
