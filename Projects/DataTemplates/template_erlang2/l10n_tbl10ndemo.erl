%% l10n.TbL10NDemo

-module(l10n_tbl10ndemo)
-export([get/1,get_ids/0])




get(11) -> 
#{

	id => 11,
	text => 测试1
}.
get(12) -> 
#{

	id => 12,
	text => 测试2
}.
get(13) -> 
#{

	id => 13,
	text => 测试3
}.
get(14) -> 
#{

	id => 14,
	text => 
}.
get(15) -> 
#{

	id => 15,
	text => 测试5
}.
get(16) -> 
#{

	id => 16,
	text => 测试6
}.
get(17) -> 
#{

	id => 17,
	text => 测试7
}.
get(18) -> 
#{

	id => 18,
	text => 测试8
}.



get_ids() ->
	[11,12,13,14,15,16,17,18].





