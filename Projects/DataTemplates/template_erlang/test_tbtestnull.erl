
%% test.TbTestNull

get(10) -> #{id => 10}.

get(11) -> #{id => 11}.

get(12) -> #{id => 12,x1 => 1,x2 => 1,x3 => #{x1 => 1},x4 => #{name__ => "DemoD2",x1 => 2,x2 => 3},s1 => "asf",s2 => #{key=>"key1",text=>"abcdef"}}.

get(20) -> #{id => 20}.

get(21) -> #{id => 21}.

get(22) -> #{id => 22,x1 => 1,x2 => 2,x3 => #{x1 => 3},x4 => #{name__ => "DemoD2",x1 => 1,x2 => 2},s1 => "asfs",s2 => #{key=>"/asf/asfa",text=>"abcdef"}}.

get(30) -> #{id => 30,x1 => 1,x2 => 1,x3 => #{x1 => 1},x4 => #{name__ => "DemoD2",x1 => 1,x2 => 22},s1 => "abcd",s2 => #{key=>"asdfasew",text=>"hahaha"}}.

get(31) -> #{id => 31}.

get(1) -> #{id => 1}.

get(2) -> #{id => 2,x1 => 1,x2 => 1,x3 => #{x1 => 3},x4 => #{name__ => "DemoD2",x1 => 1,x2 => 2},s1 => "asfasfasf",s2 => #{key=>"/keyasf",text=>"asf"}}.

get(3) -> #{id => 3,s1 => "",s2 => #{key=>"",text=>""}}.

