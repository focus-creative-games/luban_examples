%% ai.TbBehaviorTree

-module(ai_tbbehaviortree)
-export([get/1,get_ids/0])




get(10002) -> 
#{

	id => 10002,
	name => "random move",
	desc => "demo behaviour tree haha",
	blackboard_id => "demo",
	root => bean
}.



get_ids() ->
	[10002].





