%% test.TbTestExternalType

-module(test_tbtestexternaltype)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	audio_type => 1,
	color => bean
}.
get(2) -> 
#{

	id => 2,
	audio_type => 2,
	color => bean
}.



get_ids() ->
	[1,2].





