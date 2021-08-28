%% ai.TbBlackboard

-module(ai_tbblackboard)
-export([get/1,get_ids/0])




get("attack_or_patrol") -> 
#{

	name => "attack_or_patrol",
	desc => "demo hahaha",
	parent_name => "",
	keys => array
}.
get("demo") -> 
#{

	name => "demo",
	desc => "demo hahaha",
	parent_name => "demo_parent",
	keys => array
}.
get("demo_parent") -> 
#{

	name => "demo_parent",
	desc => "demo parent",
	parent_name => "",
	keys => array
}.



get_ids() ->
	[attack_or_patrol,demo,demo_parent].





