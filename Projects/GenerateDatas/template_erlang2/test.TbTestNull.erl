%% test.TbTestNull

-module(test_tbtestnull)
-export([get/1,get_ids/0])




get(10) -> 
#{

	id => 10,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => null,
	s2 => null
}.
get(11) -> 
#{

	id => 11,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => null,
	s2 => null
}.
get(12) -> 
#{

	id => 12,
	x1 => 1,
	x2 => 1,
	x3 => bean,
	x4 => bean,
	s1 => "asf",
	s2 => abcdef
}.
get(20) -> 
#{

	id => 20,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => null,
	s2 => null
}.
get(21) -> 
#{

	id => 21,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => null,
	s2 => null
}.
get(22) -> 
#{

	id => 22,
	x1 => 1,
	x2 => 2,
	x3 => bean,
	x4 => bean,
	s1 => "asfs",
	s2 => abcdef
}.
get(30) -> 
#{

	id => 30,
	x1 => 1,
	x2 => 1,
	x3 => bean,
	x4 => bean,
	s1 => "abcd",
	s2 => hahaha
}.
get(31) -> 
#{

	id => 31,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => null,
	s2 => null
}.
get(1) -> 
#{

	id => 1,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => null,
	s2 => null
}.
get(2) -> 
#{

	id => 2,
	x1 => 1,
	x2 => 1,
	x3 => bean,
	x4 => bean,
	s1 => "asfasfasf",
	s2 => asf
}.
get(3) -> 
#{

	id => 3,
	x1 => null,
	x2 => null,
	x3 => null,
	x4 => null,
	s1 => "",
	s2 => 
}.



get_ids() ->
	[10,11,12,20,21,22,30,31,1,2,3].





