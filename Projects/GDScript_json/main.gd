extends Node

var config
var json_path:String = "res://config/json/"

func call(file_name:String):
    var json_file = File.new()
    json_file.open(self.json_path + file_name + ".json", File.READ)
    var json_text = json_file.get_as_text()
    json_file.close()
    return parse_json(json_text)

func _ready():
    # load config
    config = Types.new(self)
    # just print a few config, confirm load success.
    for i in config.TbItem.get_data_list():
        print(i.id, i.name, i.desc)
