%% bonus.TbDrop

-module(bonus_tbdrop)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	desc => "奖励一个物品",
	client_show_items => array,
	bonus => bean
}.
get(2) -> 
#{

	id => 2,
	desc => "随机掉落一个",
	client_show_items => array,
	bonus => bean
}.



get_ids() ->
	[1,2].





