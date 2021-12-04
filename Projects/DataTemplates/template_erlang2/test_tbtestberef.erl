%% test.TbTestBeRef

-module(test_tbtestberef)
-export([get/1,get_ids/0])




get(1) -> 
#{

	id => 1,
	count => 10
}.
get(2) -> 
#{

	id => 2,
	count => 10
}.
get(3) -> 
#{

	id => 3,
	count => 10
}.
get(4) -> 
#{

	id => 4,
	count => 10
}.
get(5) -> 
#{

	id => 5,
	count => 10
}.
get(6) -> 
#{

	id => 6,
	count => 10
}.
get(7) -> 
#{

	id => 7,
	count => 10
}.
get(8) -> 
#{

	id => 8,
	count => 10
}.
get(9) -> 
#{

	id => 9,
	count => 10
}.
get(10) -> 
#{

	id => 10,
	count => 10
}.



get_ids() ->
	[1,2,3,4,5,6,7,8,9,10].





