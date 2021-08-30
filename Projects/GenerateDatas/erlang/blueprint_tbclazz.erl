-module(blueprint_tbclazz).
-export([get_data_map/0, get_key_list/0]).
get_data_map() -> #{
	"int" => #{name__ => "NormalClazz",name => "int",desc => "primity type:int",parents => [],methods => [],is_abstract => false,fields => []}}.
get_key_list() ->
	["int"].