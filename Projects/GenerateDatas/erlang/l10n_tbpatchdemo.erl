-module(l10n_tbpatchdemo).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	11 => #{id => 11,value => 1},
	12 => #{id => 12,value => 2},
	13 => #{id => 13,value => 3},
	14 => #{id => 14,value => 4},
	15 => #{id => 15,value => 5},
	16 => #{id => 16,value => 6},
	17 => #{id => 17,value => 7},
	18 => #{id => 18,value => 8}}.
get_key_list() ->
	[11,12,13,14,15,16,17,18].