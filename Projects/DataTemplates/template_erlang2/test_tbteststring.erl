%% test.TbTestString

-module(test_tbteststring)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	s1 => "asfas",
	cs1 => bean,
	cs2 => bean
}.
get(2) -> 
#{

	id => 2,
	s1 => "adsf\"",
	cs1 => bean,
	cs2 => bean
}.
get(3) -> 
#{

	id => 3,
	s1 => "升级到10级\"\"",
	cs1 => bean,
	cs2 => bean
}.
get(4) -> 
#{

	id => 4,
	s1 => "asdfa",
	cs1 => bean,
	cs2 => bean
}.



get_ids() ->
	[1,2,3,4].





