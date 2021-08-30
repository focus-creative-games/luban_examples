-module(test_tbtestjson2).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	1 => #{id => 1,m1 => #{1 => 2,2 => 4},m2 => #{2 => 2,3 => 3},m3 => #{"abc" => 1,"efg" => 2},m4 => #{"abc" => #{x1 => 5},"defg" => #{x1 => 10}}},
	2 => #{id => 2,m1 => #{1 => 2,2 => 4},m2 => #{2 => 2,3 => 3},m3 => #{"abc" => 1,"efg" => 2},m4 => #{"abc" => #{x1 => 5},"defg" => #{x1 => 10}}}}.
get_key_list() ->
	[1,2].