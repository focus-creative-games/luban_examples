-module(test_tbmultirowtitle).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	1 => #{id => 1,name => "xxx",x1 => #{y2 => #{z2 => 2,z3 => 3},y3 => 4},x2 => [#{z2 => 1,z3 => 2},#{z2 => 3,z3 => 4}],x3 => [#{z2 => 1,z3 => 2},#{z2 => 3,z3 => 4}]}}.
get_key_list() ->
	[1].