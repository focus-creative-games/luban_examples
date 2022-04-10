%% test.TbTestSet

-module(test_tbtestset)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	x1 => array,
	x2 => array,
	x3 => array,
	x4 => array
}.
get(2) -> 
#{

	id => 2,
	x1 => array,
	x2 => array,
	x3 => array,
	x4 => array
}.



get_ids() ->
	[1,2].





