%% blueprint.TbClazz

-module(blueprint_tbclazz)
-export([get/1,get_ids/0])




get("int") -> 
#{

	name => "int",
	desc => "primity type:int",
	parents => array,
	methods => array,
	is_abstract => false,
	fields => array
}.



get_ids() ->
	[int].





