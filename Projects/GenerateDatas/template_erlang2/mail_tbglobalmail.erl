%% mail.TbGlobalMail

-module(mail_tbglobalmail)
-export([get/1,get_ids/0])




get(21) -> 
#{

	id => 21,
	title => "测试1",
	sender => "系统",
	content => "测试内容1",
	award => array,
	all_server => true,
	server_list => array,
	platform => "1",
	channel => "1",
	min_max_level => bean,
	register_time => bean,
	mail_time => bean
}.
get(22) -> 
#{

	id => 22,
	title => "",
	sender => "系统",
	content => "测试内容2",
	award => array,
	all_server => false,
	server_list => array,
	platform => "1",
	channel => "1",
	min_max_level => bean,
	register_time => bean,
	mail_time => bean
}.
get(23) -> 
#{

	id => 23,
	title => "",
	sender => "系统",
	content => "测试内容3",
	award => array,
	all_server => false,
	server_list => array,
	platform => "1",
	channel => "1",
	min_max_level => bean,
	register_time => bean,
	mail_time => bean
}.
get(24) -> 
#{

	id => 24,
	title => "",
	sender => "系统",
	content => "测试内容3",
	award => array,
	all_server => false,
	server_list => array,
	platform => "1",
	channel => "1",
	min_max_level => bean,
	register_time => bean,
	mail_time => bean
}.



get_ids() ->
	[21,22,23,24].





