%% test.TbDemoGroupDefineFromExcel

-module(test_tbdemogroupdefinefromexcel)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	x1 => 1,
	x2 => 2,
	x3 => 3,
	x4 => 4,
	x5 => bean
}.
get(2) -> 
#{

	id => 2,
	x1 => 1,
	x2 => 2,
	x3 => 3,
	x4 => 4,
	x5 => bean
}.
get(3) -> 
#{

	id => 3,
	x1 => 1,
	x2 => 2,
	x3 => 3,
	x4 => 4,
	x5 => bean
}.
get(4) -> 
#{

	id => 4,
	x1 => 1,
	x2 => 2,
	x3 => 3,
	x4 => 4,
	x5 => bean
}.



get_ids() ->
	[1,2,3,4].





