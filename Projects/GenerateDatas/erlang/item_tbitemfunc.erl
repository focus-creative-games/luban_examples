-module(item_tbitemfunc).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	401 => #{minor_type => 401,func_type => 0,method => "使用",close_bag_ui => true},
	1102 => #{minor_type => 1102,func_type => 1,method => "使用",close_bag_ui => false}}.
get_key_list() ->
	[401,1102].