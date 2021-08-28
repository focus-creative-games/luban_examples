
-- error.TbErrorInfo

return {
[EXAMPLE_FLASH] = {
	-- error.ErrorInfo
	code = "EXAMPLE_FLASH",
	desc = "这是一个例子飘窗",
	style = {},
},
[EXAMPLE_MSGBOX] = {
	-- error.ErrorInfo
	code = "EXAMPLE_MSGBOX",
	desc = "例子弹框，消息决定行为",
	style = {btn_name="要重启了",operation=1,},
},
[EXAMPLE_DLG_OK] = {
	-- error.ErrorInfo
	code = "EXAMPLE_DLG_OK",
	desc = "例子：单按钮提示，用户自己提供回调",
	style = {btn_name="联知道了",},
},
[EXAMPLE_DLG_OK_CANCEL] = {
	-- error.ErrorInfo
	code = "EXAMPLE_DLG_OK_CANCEL",
	desc = "例子：双按钮提示，用户自己提供回调",
	style = {btn1_name="别",btn2_name="好",},
},
[ROLE_CREATE_NAME_INVALID_CHAR] = {
	-- error.ErrorInfo
	code = "ROLE_CREATE_NAME_INVALID_CHAR",
	desc = "角色名字有非法字符",
	style = {},
},
[ROLE_CREATE_NAME_EMPTY] = {
	-- error.ErrorInfo
	code = "ROLE_CREATE_NAME_EMPTY",
	desc = "名字为空",
	style = {},
},
[ROLE_CREATE_NAME_EXCEED_MAX_LENGTH] = {
	-- error.ErrorInfo
	code = "ROLE_CREATE_NAME_EXCEED_MAX_LENGTH",
	desc = "名字太长",
	style = {},
},
[ROLE_CREATE_ROLE_LIST_FULL] = {
	-- error.ErrorInfo
	code = "ROLE_CREATE_ROLE_LIST_FULL",
	desc = "角色列表已满",
	style = {},
},
[ROLE_CREATE_INVALID_PROFESSION] = {
	-- error.ErrorInfo
	code = "ROLE_CREATE_INVALID_PROFESSION",
	desc = "非法职业",
	style = {},
},
[PARAM_ILLEGAL] = {
	-- error.ErrorInfo
	code = "PARAM_ILLEGAL",
	desc = "参数非法",
	style = {},
},
[BAG_IS_FULL] = {
	-- error.ErrorInfo
	code = "BAG_IS_FULL",
	desc = "背包已满",
	style = {},
},
[ITEM_NOT_ENOUGH] = {
	-- error.ErrorInfo
	code = "ITEM_NOT_ENOUGH",
	desc = "道具不足",
	style = {},
},
[ITEM_IN_BAG] = {
	-- error.ErrorInfo
	code = "ITEM_IN_BAG",
	desc = "道具已在背包中",
	style = {},
},
[GENDER_NOT_MATCH] = {
	-- error.ErrorInfo
	code = "GENDER_NOT_MATCH",
	desc = "",
	style = {},
},
[LEVEL_TOO_LOW] = {
	-- error.ErrorInfo
	code = "LEVEL_TOO_LOW",
	desc = "等级太低",
	style = {},
},
[LEVEL_TOO_HIGH] = {
	-- error.ErrorInfo
	code = "LEVEL_TOO_HIGH",
	desc = "等级太高",
	style = {},
},
[EXCEED_LIMIT] = {
	-- error.ErrorInfo
	code = "EXCEED_LIMIT",
	desc = "超过限制",
	style = {},
},
[OVER_TIME] = {
	-- error.ErrorInfo
	code = "OVER_TIME",
	desc = "超时",
	style = {},
},
[SKILL_NOT_IN_LIST] = {
	-- error.ErrorInfo
	code = "SKILL_NOT_IN_LIST",
	desc = "",
	style = {},
},
[SKILL_NOT_COOLDOWN] = {
	-- error.ErrorInfo
	code = "SKILL_NOT_COOLDOWN",
	desc = "",
	style = {},
},
[SKILL_TARGET_NOT_EXIST] = {
	-- error.ErrorInfo
	code = "SKILL_TARGET_NOT_EXIST",
	desc = "",
	style = {},
},
[SKILL_ANOTHER_CASTING] = {
	-- error.ErrorInfo
	code = "SKILL_ANOTHER_CASTING",
	desc = "",
	style = {},
},
[MAIL_TYPE_ERROR] = {
	-- error.ErrorInfo
	code = "MAIL_TYPE_ERROR",
	desc = "邮件类型错误",
	style = {},
},
[MAIL_HAVE_DELETED] = {
	-- error.ErrorInfo
	code = "MAIL_HAVE_DELETED",
	desc = "邮件已删除",
	style = {},
},
[MAIL_AWARD_HAVE_RECEIVED] = {
	-- error.ErrorInfo
	code = "MAIL_AWARD_HAVE_RECEIVED",
	desc = "邮件奖励已领取",
	style = {},
},
[MAIL_OPERATE_TYPE_ERROR] = {
	-- error.ErrorInfo
	code = "MAIL_OPERATE_TYPE_ERROR",
	desc = "邮件操作类型错误",
	style = {},
},
[MAIL_CONDITION_NOT_MEET] = {
	-- error.ErrorInfo
	code = "MAIL_CONDITION_NOT_MEET",
	desc = "邮件条件不满足",
	style = {},
},
[MAIL_NO_AWARD] = {
	-- error.ErrorInfo
	code = "MAIL_NO_AWARD",
	desc = "邮件没有奖励",
	style = {},
},
[MAIL_BOX_IS_FULL] = {
	-- error.ErrorInfo
	code = "MAIL_BOX_IS_FULL",
	desc = "邮箱已满",
	style = {},
},
[NO_INTERACTION_COMPONENT] = {
	-- error.ErrorInfo
	code = "NO_INTERACTION_COMPONENT",
	desc = "在被拾取对象上，找不到交互组件！！",
	style = {},
},
[BUTTON_TOO_MANY_CLICKS] = {
	-- error.ErrorInfo
	code = "BUTTON_TOO_MANY_CLICKS",
	desc = "点击次数太多了",
	style = {},
},
[SKILL_ENEYGY_LACK] = {
	-- error.ErrorInfo
	code = "SKILL_ENEYGY_LACK",
	desc = "技能能量不足",
	style = {},
},
[SKILL_IS_COOLINGDOWN] = {
	-- error.ErrorInfo
	code = "SKILL_IS_COOLINGDOWN",
	desc = "技能冷却中",
	style = {},
},
[SKILL_NO_REACTION_OBJ] = {
	-- error.ErrorInfo
	code = "SKILL_NO_REACTION_OBJ",
	desc = "当前没有对技能生效的物体",
	style = {},
},
[SKILL_NOT_UNLOCKED] = {
	-- error.ErrorInfo
	code = "SKILL_NOT_UNLOCKED",
	desc = "技能尚未解锁",
	style = {},
},
[SKILL_IS_GROUP_COLLINGDOWN] = {
	-- error.ErrorInfo
	code = "SKILL_IS_GROUP_COLLINGDOWN",
	desc = "技能释放中",
	style = {},
},
[CLOTH_CHANGE_TOO_FAST] = {
	-- error.ErrorInfo
	code = "CLOTH_CHANGE_TOO_FAST",
	desc = "暖暖正在换衣服中，请稍等",
	style = {},
},
[CLOTH_CHANGE_NOT_ALLOW] = {
	-- error.ErrorInfo
	code = "CLOTH_CHANGE_NOT_ALLOW",
	desc = "当前状态不允许换装",
	style = {},
},
[CLOTH_CHANGE_SAME] = {
	-- error.ErrorInfo
	code = "CLOTH_CHANGE_SAME",
	desc = "换的还是目前的套装",
	style = {},
},
[HAS_BIND_SERVER] = {
	-- error.ErrorInfo
	code = "HAS_BIND_SERVER",
	desc = "已经绑定过该服务器",
	style = {btn_name="ok",operation=1,},
},
[AUTH_FAIL] = {
	-- error.ErrorInfo
	code = "AUTH_FAIL",
	desc = "认证失败",
	style = {btn_name="ok",operation=1,},
},
[NOT_BIND_SERVER] = {
	-- error.ErrorInfo
	code = "NOT_BIND_SERVER",
	desc = "没有绑定服务器",
	style = {btn_name="ok",operation=1,},
},
[SERVER_ACCESS_FAIL] = {
	-- error.ErrorInfo
	code = "SERVER_ACCESS_FAIL",
	desc = "访问服务器失败",
	style = {btn_name="ok",operation=1,},
},
[SERVER_NOT_EXISTS] = {
	-- error.ErrorInfo
	code = "SERVER_NOT_EXISTS",
	desc = "该服务器不存在",
	style = {btn_name="ok",operation=1,},
},
[SUIT_NOT_UNLOCK] = {
	-- error.ErrorInfo
	code = "SUIT_NOT_UNLOCK",
	desc = "套装尚未解锁",
	style = {},
},
[SUIT_COMPONENT_NOT_UNLOCK] = {
	-- error.ErrorInfo
	code = "SUIT_COMPONENT_NOT_UNLOCK",
	desc = "部件尚未解锁",
	style = {},
},
[SUIT_STATE_ERROR] = {
	-- error.ErrorInfo
	code = "SUIT_STATE_ERROR",
	desc = "套装状态错误",
	style = {},
},
[SUIT_COMPONENT_STATE_ERROR] = {
	-- error.ErrorInfo
	code = "SUIT_COMPONENT_STATE_ERROR",
	desc = "部件状态错误",
	style = {},
},
[SUIT_COMPONENT_NO_NEED_LEARN] = {
	-- error.ErrorInfo
	code = "SUIT_COMPONENT_NO_NEED_LEARN",
	desc = "设计图纸对应的部件均已完成学习",
	style = {},
},
}