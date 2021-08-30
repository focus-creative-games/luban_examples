-module(test_tbtestexcelbean).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	1 => #{x1 => 1,x2 => "xx",x3 => 2,x4 => 2.5},
	2 => #{x1 => 2,x2 => "zz",x3 => 2,x4 => 4.3},
	3 => #{x1 => 3,x2 => "ww",x3 => 2,x4 => 5},
	4 => #{x1 => 4,x2 => "ee",x3 => 2,x4 => 6}}.
get_key_list() ->
	[1,2,3,4].