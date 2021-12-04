
%% error.TbErrorInfo

get("EXAMPLE_FLASH") -> #{code => "EXAMPLE_FLASH",desc => "这是一个例子飘窗",style => #{name__ => "ErrorStyleTip"}}.

get("EXAMPLE_MSGBOX") -> #{code => "EXAMPLE_MSGBOX",desc => "例子弹框，消息决定行为",style => #{name__ => "ErrorStyleMsgbox",btn_name => "要重启了",operation => 1}}.

get("EXAMPLE_DLG_OK") -> #{code => "EXAMPLE_DLG_OK",desc => "例子：单按钮提示，用户自己提供回调",style => #{name__ => "ErrorStyleDlgOk",btn_name => "联知道了"}}.

get("EXAMPLE_DLG_OK_CANCEL") -> #{code => "EXAMPLE_DLG_OK_CANCEL",desc => "例子：双按钮提示，用户自己提供回调",style => #{name__ => "ErrorStyleDlgOkCancel",btn1_name => "别",btn2_name => "好"}}.

get("ROLE_CREATE_NAME_INVALID_CHAR") -> #{code => "ROLE_CREATE_NAME_INVALID_CHAR",desc => "角色名字有非法字符",style => #{name__ => "ErrorStyleTip"}}.

get("ROLE_CREATE_NAME_EMPTY") -> #{code => "ROLE_CREATE_NAME_EMPTY",desc => "名字为空",style => #{name__ => "ErrorStyleTip"}}.

get("ROLE_CREATE_NAME_EXCEED_MAX_LENGTH") -> #{code => "ROLE_CREATE_NAME_EXCEED_MAX_LENGTH",desc => "名字太长",style => #{name__ => "ErrorStyleTip"}}.

get("ROLE_CREATE_ROLE_LIST_FULL") -> #{code => "ROLE_CREATE_ROLE_LIST_FULL",desc => "角色列表已满",style => #{name__ => "ErrorStyleTip"}}.

get("ROLE_CREATE_INVALID_PROFESSION") -> #{code => "ROLE_CREATE_INVALID_PROFESSION",desc => "非法职业",style => #{name__ => "ErrorStyleTip"}}.

get("PARAM_ILLEGAL") -> #{code => "PARAM_ILLEGAL",desc => "参数非法",style => #{name__ => "ErrorStyleTip"}}.

get("BAG_IS_FULL") -> #{code => "BAG_IS_FULL",desc => "背包已满",style => #{name__ => "ErrorStyleTip"}}.

get("ITEM_NOT_ENOUGH") -> #{code => "ITEM_NOT_ENOUGH",desc => "道具不足",style => #{name__ => "ErrorStyleTip"}}.

get("ITEM_IN_BAG") -> #{code => "ITEM_IN_BAG",desc => "道具已在背包中",style => #{name__ => "ErrorStyleTip"}}.

get("GENDER_NOT_MATCH") -> #{code => "GENDER_NOT_MATCH",desc => "",style => #{name__ => "ErrorStyleTip"}}.

get("LEVEL_TOO_LOW") -> #{code => "LEVEL_TOO_LOW",desc => "等级太低",style => #{name__ => "ErrorStyleTip"}}.

get("LEVEL_TOO_HIGH") -> #{code => "LEVEL_TOO_HIGH",desc => "等级太高",style => #{name__ => "ErrorStyleTip"}}.

get("EXCEED_LIMIT") -> #{code => "EXCEED_LIMIT",desc => "超过限制",style => #{name__ => "ErrorStyleTip"}}.

get("OVER_TIME") -> #{code => "OVER_TIME",desc => "超时",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_NOT_IN_LIST") -> #{code => "SKILL_NOT_IN_LIST",desc => "",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_NOT_COOLDOWN") -> #{code => "SKILL_NOT_COOLDOWN",desc => "",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_TARGET_NOT_EXIST") -> #{code => "SKILL_TARGET_NOT_EXIST",desc => "",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_ANOTHER_CASTING") -> #{code => "SKILL_ANOTHER_CASTING",desc => "",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_TYPE_ERROR") -> #{code => "MAIL_TYPE_ERROR",desc => "邮件类型错误",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_HAVE_DELETED") -> #{code => "MAIL_HAVE_DELETED",desc => "邮件已删除",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_AWARD_HAVE_RECEIVED") -> #{code => "MAIL_AWARD_HAVE_RECEIVED",desc => "邮件奖励已领取",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_OPERATE_TYPE_ERROR") -> #{code => "MAIL_OPERATE_TYPE_ERROR",desc => "邮件操作类型错误",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_CONDITION_NOT_MEET") -> #{code => "MAIL_CONDITION_NOT_MEET",desc => "邮件条件不满足",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_NO_AWARD") -> #{code => "MAIL_NO_AWARD",desc => "邮件没有奖励",style => #{name__ => "ErrorStyleTip"}}.

get("MAIL_BOX_IS_FULL") -> #{code => "MAIL_BOX_IS_FULL",desc => "邮箱已满",style => #{name__ => "ErrorStyleTip"}}.

get("NO_INTERACTION_COMPONENT") -> #{code => "NO_INTERACTION_COMPONENT",desc => "在被拾取对象上，找不到交互组件！！",style => #{name__ => "ErrorStyleTip"}}.

get("BUTTON_TOO_MANY_CLICKS") -> #{code => "BUTTON_TOO_MANY_CLICKS",desc => "点击次数太多了",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_ENEYGY_LACK") -> #{code => "SKILL_ENEYGY_LACK",desc => "技能能量不足",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_IS_COOLINGDOWN") -> #{code => "SKILL_IS_COOLINGDOWN",desc => "技能冷却中",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_NO_REACTION_OBJ") -> #{code => "SKILL_NO_REACTION_OBJ",desc => "当前没有对技能生效的物体",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_NOT_UNLOCKED") -> #{code => "SKILL_NOT_UNLOCKED",desc => "技能尚未解锁",style => #{name__ => "ErrorStyleTip"}}.

get("SKILL_IS_GROUP_COLLINGDOWN") -> #{code => "SKILL_IS_GROUP_COLLINGDOWN",desc => "技能释放中",style => #{name__ => "ErrorStyleTip"}}.

get("CLOTH_CHANGE_TOO_FAST") -> #{code => "CLOTH_CHANGE_TOO_FAST",desc => "暖暖正在换衣服中，请稍等",style => #{name__ => "ErrorStyleTip"}}.

get("CLOTH_CHANGE_NOT_ALLOW") -> #{code => "CLOTH_CHANGE_NOT_ALLOW",desc => "当前状态不允许换装",style => #{name__ => "ErrorStyleTip"}}.

get("CLOTH_CHANGE_SAME") -> #{code => "CLOTH_CHANGE_SAME",desc => "换的还是目前的套装",style => #{name__ => "ErrorStyleTip"}}.

get("HAS_BIND_SERVER") -> #{code => "HAS_BIND_SERVER",desc => "已经绑定过该服务器",style => #{name__ => "ErrorStyleMsgbox",btn_name => "ok",operation => 1}}.

get("AUTH_FAIL") -> #{code => "AUTH_FAIL",desc => "认证失败",style => #{name__ => "ErrorStyleMsgbox",btn_name => "ok",operation => 1}}.

get("NOT_BIND_SERVER") -> #{code => "NOT_BIND_SERVER",desc => "没有绑定服务器",style => #{name__ => "ErrorStyleMsgbox",btn_name => "ok",operation => 1}}.

get("SERVER_ACCESS_FAIL") -> #{code => "SERVER_ACCESS_FAIL",desc => "访问服务器失败",style => #{name__ => "ErrorStyleMsgbox",btn_name => "ok",operation => 1}}.

get("SERVER_NOT_EXISTS") -> #{code => "SERVER_NOT_EXISTS",desc => "该服务器不存在",style => #{name__ => "ErrorStyleMsgbox",btn_name => "ok",operation => 1}}.

get("SUIT_NOT_UNLOCK") -> #{code => "SUIT_NOT_UNLOCK",desc => "套装尚未解锁",style => #{name__ => "ErrorStyleTip"}}.

get("SUIT_COMPONENT_NOT_UNLOCK") -> #{code => "SUIT_COMPONENT_NOT_UNLOCK",desc => "部件尚未解锁",style => #{name__ => "ErrorStyleTip"}}.

get("SUIT_STATE_ERROR") -> #{code => "SUIT_STATE_ERROR",desc => "套装状态错误",style => #{name__ => "ErrorStyleTip"}}.

get("SUIT_COMPONENT_STATE_ERROR") -> #{code => "SUIT_COMPONENT_STATE_ERROR",desc => "部件状态错误",style => #{name__ => "ErrorStyleTip"}}.

get("SUIT_COMPONENT_NO_NEED_LEARN") -> #{code => "SUIT_COMPONENT_NO_NEED_LEARN",desc => "设计图纸对应的部件均已完成学习",style => #{name__ => "ErrorStyleTip"}}.

