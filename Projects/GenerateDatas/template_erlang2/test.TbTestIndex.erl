%% test.TbTestIndex

-module(test_tbtestindex)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	eles => array
}.
get(2) -> 
#{

	id => 2,
	eles => array
}.
get(3) -> 
#{

	id => 3,
	eles => array
}.
get(4) -> 
#{

	id => 4,
	eles => array
}.



get_ids() ->
	[1,2,3,4].





