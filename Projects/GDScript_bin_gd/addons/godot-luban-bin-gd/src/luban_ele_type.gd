class_name LubanEleType
extends RefCounted


const NONE := 0
const BOOL := 1
const BYTE := 2
const SHORT := 3
const INT := 4
const LONG := 5
const FLOAT := 6
const DOUBLE := 7
const STRING := 8
const BEAN := 9
const ARRAY := 10
const MAP := 11


var type: int = NONE
var key_type: LubanEleType = null
var value_type: LubanEleType = null
var bean_func: Callable = Callable()


static func create(type: int) -> LubanEleType:
	var element_type := LubanEleType.new()
	element_type.type = type
	return element_type


static func create_bean(bean_func: Callable) -> LubanEleType:
	var element_type := LubanEleType.new()
	element_type.type = BEAN
	element_type.bean_func = bean_func
	return element_type


static func create_arr(value_type: LubanEleType) -> LubanEleType:
	var element_type := LubanEleType.new()
	element_type.type = ARRAY
	element_type.value_type = value_type
	return element_type


static func create_map(key_type: LubanEleType, value_type: LubanEleType) -> LubanEleType:
	var element_type := LubanEleType.new()
	element_type.type = MAP
	element_type.key_type = key_type
	element_type.value_type = value_type
	return element_type
