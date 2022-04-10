%% test.TbCompositeJsonTable1

-module(test_tbcompositejsontable1)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	x => "aaa1"
}.
get(2) -> 
#{

	id => 2,
	x => "xx2"
}.
get(11) -> 
#{

	id => 11,
	x => "aaa11"
}.
get(12) -> 
#{

	id => 12,
	x => "xx12"
}.



get_ids() ->
	[1,2,11,12].





