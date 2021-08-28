%% test.TbTestJson2

-module(test_tbtestjson2)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	m1 => map,
	m2 => map,
	m3 => map,
	m4 => map
}.
get(2) -> 
#{

	id => 2,
	m1 => map,
	m2 => map,
	m3 => map,
	m4 => map
}.



get_ids() ->
	[1,2].





