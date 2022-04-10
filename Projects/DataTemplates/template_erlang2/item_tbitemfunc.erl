%% item.TbItemFunc

-module(item_tbitemfunc)
-export([get/1,get_ids/0])




get(401) -> 
#{

	minor_type => 401,
	func_type => 0,
	method => "使用",
	close_bag_ui => true
}.
get(1102) -> 
#{

	minor_type => 1102,
	func_type => 1,
	method => "使用",
	close_bag_ui => false
}.



get_ids() ->
	[401,1102].





