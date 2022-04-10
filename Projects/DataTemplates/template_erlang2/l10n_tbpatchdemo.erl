%% l10n.TbPatchDemo

-module(l10n_tbpatchdemo)
-export([get/1,get_ids/0])




get(11) -> 
#{

	id => 11,
	value => 1
}.
get(12) -> 
#{

	id => 12,
	value => 2
}.
get(13) -> 
#{

	id => 13,
	value => 3
}.
get(14) -> 
#{

	id => 14,
	value => 4
}.
get(15) -> 
#{

	id => 15,
	value => 5
}.
get(16) -> 
#{

	id => 16,
	value => 6
}.
get(17) -> 
#{

	id => 17,
	value => 7
}.
get(18) -> 
#{

	id => 18,
	value => 8
}.



get_ids() ->
	[11,12,13,14,15,16,17,18].





