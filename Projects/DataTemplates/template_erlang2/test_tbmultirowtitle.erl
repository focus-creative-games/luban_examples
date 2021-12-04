%% test.TbMultiRowTitle

-module(test_tbmultirowtitle)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	name => "xxx",
	x1 => bean,
	x2_0 => null,
	x2 => array,
	x3 => array,
	x4 => array
}.
get(11) -> 
#{

	id => 11,
	name => "yyy",
	x1 => bean,
	x2_0 => bean,
	x2 => array,
	x3 => array,
	x4 => array
}.



get_ids() ->
	[1,11].





