%% test.TbCompositeJsonTable2

-module(test_tbcompositejsontable2)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	y => 100
}.
get(3) -> 
#{

	id => 3,
	y => 300
}.



get_ids() ->
	[1,3].





