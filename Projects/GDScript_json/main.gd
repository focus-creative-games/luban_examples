extends Node

var config
var json_path:String = "res://json/"

func loader(file_name:String):
	var json_file = FileAccess.open(self.json_path + file_name + ".json", FileAccess.READ)
	var json_text = json_file.get_as_text()
	json_file.close()
	return JSON.parse_string(json_text)

func _ready():
	# load config
	config = Schema.CfgTables.new(loader)
	# just print a few config, confirm load success.
	for i in config.TbItem.get_data_list():
		print(i.id, i.name, i.desc)
