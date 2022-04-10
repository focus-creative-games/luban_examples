%% test.TbDefineFromExcel2

-module(test_tbdefinefromexcel2)
-export([get/1,get_ids/0])




get(10000) -> 
#{

	id => 10000,
	x1 => true,
	x5 => 10,
	x6 => 1.28,
	x8 => 3,
	x10 => "huang",
	x13 => 1,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 935460549,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10001) -> 
#{

	id => 10001,
	x1 => true,
	x5 => 10,
	x6 => 1.28,
	x8 => 5,
	x10 => "huang",
	x13 => 1,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 935460549,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10002) -> 
#{

	id => 10002,
	x1 => true,
	x5 => 13234234234,
	x6 => 1.28,
	x8 => 6,
	x10 => "huang",
	x13 => 1,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 1577808000,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10003) -> 
#{

	id => 10003,
	x1 => true,
	x5 => 13234234234,
	x6 => 1.28,
	x8 => 3,
	x10 => "huang",
	x13 => 1,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 933732549,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10004) -> 
#{

	id => 10004,
	x1 => true,
	x5 => 13234234234,
	x6 => 1.28,
	x8 => 4,
	x10 => "huang",
	x13 => 1,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 1577808000,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10005) -> 
#{

	id => 10005,
	x1 => true,
	x5 => 13234234234,
	x6 => 1.28,
	x8 => 5,
	x10 => "huang",
	x13 => 1,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 935460549,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10006) -> 
#{

	id => 10006,
	x1 => true,
	x5 => 10,
	x6 => 1.28,
	x8 => 6,
	x10 => "",
	x13 => 2,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 1577808000,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10007) -> 
#{

	id => 10007,
	x1 => true,
	x5 => 10,
	x6 => 1.28,
	x8 => 4,
	x10 => "xxx",
	x13 => 2,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 935460549,
	k1 => array,
	k8 => map,
	k9 => array
}.
get(10008) -> 
#{

	id => 10008,
	x1 => true,
	x5 => 10,
	x6 => 1.28,
	x8 => 3,
	x10 => "xxx",
	x13 => 2,
	x14 => bean,
	v2 => {"1","2"},
	t1 => 935460549,
	k1 => array,
	k8 => map,
	k9 => array
}.



get_ids() ->
	[10000,10001,10002,10003,10004,10005,10006,10007,10008].





