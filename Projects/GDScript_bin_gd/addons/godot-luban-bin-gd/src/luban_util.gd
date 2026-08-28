class_name LubanUtil
extends Object


static func read_bool(buf: LubanByteBuf) -> bool:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return false
	return buf.read_bool()


static func read_byte(buf: LubanByteBuf) -> int:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0
	return buf.read_byte()


static func read_short(buf: LubanByteBuf) -> int:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0
	return buf.read_short()


static func read_int(buf: LubanByteBuf) -> int:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0
	return buf.read_int()


static func read_long(buf: LubanByteBuf) -> int:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0
	return buf.read_long()


static func read_float(buf: LubanByteBuf) -> float:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0.0
	return buf.read_float()


static func read_double(buf: LubanByteBuf) -> float:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0.0
	return buf.read_double()


static func read_string(buf: LubanByteBuf) -> String:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return ""
	return buf.read_string()


static func read_size(buf: LubanByteBuf) -> int:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return 0
	return buf.read_size()


static func read_array(buf: LubanByteBuf, element_type: LubanEleType) -> Array:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return []
	var size := buf.read_size()
	var arr: Array = []
	for i in range(size):
		arr.append(read_element(buf, element_type))
	return arr


static func read_map(buf: LubanByteBuf, key_type: LubanEleType, value_type: LubanEleType) -> Dictionary:
	if buf == null:
		push_error("LubanUtil: invalid LubanByteBuf reference")
		return {}
	var size := buf.read_size()
	var dict: Dictionary = {}
	for i in range(size):
		var key = read_element(buf, key_type)
		var value = read_element(buf, value_type)
		dict[key] = value
	return dict


static func read_element(buf: LubanByteBuf, element_type: LubanEleType) -> Variant:
	if buf == null:
		push_error("LubanEleType: invalid LubanByteBuf reference")
		return null
	if element_type == null:
		push_error("LubanEleType: invalid LubanEleType reference")
		return null
	match element_type.type:
		LubanEleType.BOOL:
			return read_bool(buf)
		LubanEleType.BYTE:
			return read_byte(buf)
		LubanEleType.SHORT:
			return read_short(buf)
		LubanEleType.INT:
			return read_int(buf)
		LubanEleType.LONG:
			return read_long(buf)
		LubanEleType.FLOAT:
			return read_float(buf)
		LubanEleType.DOUBLE:
			return read_double(buf)
		LubanEleType.STRING:
			return read_string(buf)
		LubanEleType.BEAN:
			if not element_type.bean_func.is_valid():
				push_error("LubanEleType: bean_func is not valid")
				return null
			return element_type.bean_func.call(buf)
		LubanEleType.ARRAY:
			return read_array(buf, element_type.value_type)
		LubanEleType.MAP:
			return read_map(buf, element_type.key_type, element_type.value_type)
		_:
			push_error("LubanEleType: Unknown type")
			return null
