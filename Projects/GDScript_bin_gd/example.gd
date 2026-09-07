extends Node

static func _load_cfg_bytes(file_name : String) -> LubanByteBuf:
	var _bytes = FileAccess.get_file_as_bytes("res://config/"+file_name+".bytes")
	var _buf : LubanByteBuf = LubanByteBuf.create(_bytes)
	return _buf

func _ready() -> void:
	# load config
	var config = Schema.CfgTables.new(_load_cfg_bytes)
	# just print a few config, confirm load success.
	for i in config.tbItem.get_data_list():
		prints(i.id, i.name, i.desc)
	
