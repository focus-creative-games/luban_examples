class_name LubanByteBuf
extends RefCounted


var _bytes: PackedByteArray = PackedByteArray()
var _read_index: int = 0


static func create(bytes: PackedByteArray) -> LubanByteBuf:
	var buf := LubanByteBuf.new()
	buf._bytes = bytes.duplicate()
	return buf


func get_bytes() -> PackedByteArray:
	return _bytes


func print_status() -> void:
	print("LubanByteBuf: size = ", _bytes.size(), ", readIndex = ", _read_index)
	print("LubanByteBuf: bytes = ", _bytes)


func _error(kind: String) -> void:
	push_error("LubanByteBuf: failed to read " + kind)


func _sign16(x: int) -> int:
	if x >= 0x8000:
		return x - 0x10000
	return x


func _sign32(x: int) -> int:
	if x >= 0x80000000:
		return x - 0x100000000
	return x


func _read_uint() -> int:
	var i := _read_index
	var n := _bytes.size()
	if i >= n:
		_error("uint")
		return 0
	var h := _bytes[i]
	if h < 0x80:
		_read_index = i + 1
		return h
	elif h < 0xc0:
		if i + 1 >= n:
			_error("uint")
			return 0
		var x := ((h & 0x3f) << 8) | _bytes[i + 1]
		_read_index = i + 2
		return x
	elif h < 0xe0:
		if i + 2 >= n:
			_error("uint")
			return 0
		var x := ((h & 0x1f) << 16) | (_bytes[i + 1] << 8) | _bytes[i + 2]
		_read_index = i + 3
		return x
	elif h < 0xf0:
		if i + 3 >= n:
			_error("uint")
			return 0
		var x := ((h & 0x0f) << 24) | (_bytes[i + 1] << 16) | (_bytes[i + 2] << 8) | _bytes[i + 3]
		_read_index = i + 4
		return x
	else:
		if i + 4 >= n:
			_error("uint")
			return 0
		var x := (_bytes[i + 1] << 24) | (_bytes[i + 2] << 16) | (_bytes[i + 3] << 8) | _bytes[i + 4]
		_read_index = i + 5
		return x


func _read_ulong() -> int:
	var i := _read_index
	var n := _bytes.size()
	if i >= n:
		_error("ulong")
		return 0
	var h := _bytes[i]
	if h < 0x80:
		_read_index = i + 1
		return h
	elif h < 0xc0:
		if i + 1 >= n:
			_error("ulong")
			return 0
		var x := ((h & 0x3f) << 8) | _bytes[i + 1]
		_read_index = i + 2
		return x
	elif h < 0xe0:
		if i + 2 >= n:
			_error("ulong")
			return 0
		var x := ((h & 0x1f) << 16) | (_bytes[i + 1] << 8) | _bytes[i + 2]
		_read_index = i + 3
		return x
	elif h < 0xf0:
		if i + 3 >= n:
			_error("ulong")
			return 0
		var x := ((h & 0x0f) << 24) | (_bytes[i + 1] << 16) | (_bytes[i + 2] << 8) | _bytes[i + 3]
		_read_index = i + 4
		return x
	elif h < 0xf8:
		if i + 4 >= n:
			_error("ulong")
			return 0
		var xl := (_bytes[i + 1] << 24) | (_bytes[i + 2] << 16) | (_bytes[i + 3] << 8) | _bytes[i + 4]
		var xh := h & 0x07
		_read_index = i + 5
		return (xh << 32) | xl
	elif h < 0xfc:
		if i + 5 >= n:
			_error("ulong")
			return 0
		var xl := (_bytes[i + 2] << 24) | (_bytes[i + 3] << 16) | (_bytes[i + 4] << 8) | _bytes[i + 5]
		var xh := ((h & 0x03) << 8) | _bytes[i + 1]
		_read_index = i + 6
		return (xh << 32) | xl
	elif h < 0xfe:
		if i + 6 >= n:
			_error("ulong")
			return 0
		var xl := (_bytes[i + 3] << 24) | (_bytes[i + 4] << 16) | (_bytes[i + 5] << 8) | _bytes[i + 6]
		var xh := ((h & 0x01) << 16) | (_bytes[i + 1] << 8) | _bytes[i + 2]
		_read_index = i + 7
		return (xh << 32) | xl
	elif h < 0xff:
		if i + 7 >= n:
			_error("ulong")
			return 0
		var xl := (_bytes[i + 4] << 24) | (_bytes[i + 5] << 16) | (_bytes[i + 6] << 8) | _bytes[i + 7]
		var xh := (_bytes[i + 1] << 16) | (_bytes[i + 2] << 8) | _bytes[i + 3]
		_read_index = i + 8
		return (xh << 32) | xl
	else:
		if i + 8 >= n:
			_error("ulong")
			return 0
		var xl := (_bytes[i + 5] << 24) | (_bytes[i + 6] << 16) | (_bytes[i + 7] << 8) | _bytes[i + 8]
		var xh := (_bytes[i + 1] << 24) | (_bytes[i + 2] << 16) | (_bytes[i + 3] << 8) | _bytes[i + 4]
		_read_index = i + 9
		return (xh << 32) | xl


func read_bool() -> bool:
	if _read_index >= _bytes.size():
		_error("bool")
		return false
	var value: bool = _bytes[_read_index] != 0
	_read_index += 1
	return value


func read_byte() -> int:
	if _read_index >= _bytes.size():
		_error("byte")
		return 0
	var value: int = _bytes[_read_index]
	_read_index += 1
	return value


func read_short() -> int:
	if _read_index >= _bytes.size():
		_error("short")
		return 0
	var h := _bytes[_read_index]
	if h < 0x80:
		_read_index += 1
		return h
	elif h < 0xc0:
		if _read_index + 1 >= _bytes.size():
			_error("short")
			return 0
		var x := ((h & 0x3f) << 8) | _bytes[_read_index + 1]
		_read_index += 2
		return x
	elif h == 0xff:
		if _read_index + 2 >= _bytes.size():
			_error("short")
			return 0
		var x := (_bytes[_read_index + 1] << 8) | _bytes[_read_index + 2]
		_read_index += 3
		return _sign16(x)
	else:
		_error("short")
		return 0


func read_fshort() -> int:
	if _read_index + 2 > _bytes.size():
		_error("fshort")
		return 0
	var value: int = _bytes.decode_s16(_read_index)
	_read_index += 2
	return value


func read_int() -> int:
	return _sign32(_read_uint())


func read_fint() -> int:
	if _read_index + 4 > _bytes.size():
		_error("fint")
		return 0
	var value: int = _bytes.decode_s32(_read_index)
	_read_index += 4
	return value


func read_sint() -> int:
	var u := _read_uint()
	return (u >> 1) ^ -(u & 1)


func read_uint() -> int:
	return _read_uint()


func read_long() -> int:
	return _read_ulong()


func read_slong() -> int:
	var u := _read_ulong()
	return ((u >> 1) & 0x7FFFFFFFFFFFFFFF) ^ -(u & 1)


func read_flong() -> int:
	if _read_index + 8 > _bytes.size():
		_error("flong")
		return 0
	var value: int = _bytes.decode_s64(_read_index)
	_read_index += 8
	return value


func read_ulong() -> int:
	return _read_ulong()


func read_float() -> float:
	if _read_index + 4 > _bytes.size():
		_error("float")
		return 0.0
	var value: float = _bytes.decode_float(_read_index)
	_read_index += 4
	return value


func read_double() -> float:
	if _read_index + 8 > _bytes.size():
		_error("double")
		return 0.0
	var value: float = _bytes.decode_double(_read_index)
	_read_index += 8
	return value


func read_string() -> String:
	var n := _read_uint()
	if _read_index + n > _bytes.size():
		_error("string")
		return ""
	var value := _bytes.slice(_read_index, _read_index + n).get_string_from_utf8()
	_read_index += n
	return value


func read_size() -> int:
	return _read_uint()
