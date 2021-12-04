%% test.TbTestDesc

-module(test_tbtestdesc)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	name => "xxx",
	a1 => 0,
	a2 => 0,
	x1 => bean,
	x2 => array,
	x3 => array
}.



get_ids() ->
	[1].





