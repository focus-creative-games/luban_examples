-module(bonus_tbdrop).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	1 => #{id => 1,desc => "奖励一个物品",client_show_items => [],bonus => #{name__ => "OneItem",item_id => 1021490001}},
	2 => #{id => 2,desc => "随机掉落一个",client_show_items => [],bonus => #{name__ => "OneItem",item_id => 1021490001}}}.
get_key_list() ->
	[1,2].