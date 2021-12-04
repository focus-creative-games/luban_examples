%% test.TbExcelFromJsonMultiRow

-module(test_tbexcelfromjsonmultirow)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	x => 5,
	items => array
}.
get(2) -> 
#{

	id => 2,
	x => 9,
	items => array
}.



get_ids() ->
	[1,2].





