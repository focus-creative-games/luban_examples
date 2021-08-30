%% mail.TbSystemMail

-module(mail_tbsystemmail)
-export([get/1,get_ids/0])




get(11) -> 
#{

	id => 11,
	title => "测试1",
	sender => "系统",
	content => "测试内容1",
	award => array
}.
get(12) -> 
#{

	id => 12,
	title => "测试2",
	sender => "系统",
	content => "测试内容2",
	award => array
}.
get(13) -> 
#{

	id => 13,
	title => "测试3",
	sender => "系统",
	content => "测试内容3",
	award => array
}.
get(14) -> 
#{

	id => 14,
	title => "测试4",
	sender => "系统",
	content => "测试内容4",
	award => array
}.
get(15) -> 
#{

	id => 15,
	title => "测试5",
	sender => "系统",
	content => "测试内容5",
	award => array
}.



get_ids() ->
	[11,12,13,14,15].





