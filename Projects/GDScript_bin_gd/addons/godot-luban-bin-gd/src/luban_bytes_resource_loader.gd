class_name LubanBytesResourceLoader
extends ResourceFormatLoader


func _get_recognized_extensions() -> PackedStringArray:
	return PackedStringArray(["bytes"])


func _handles_type(type: StringName) -> bool:
	return type == &"Resource"


func _get_resource_type(path: String) -> String:
	if path.get_extension().to_lower() == "bytes":
		return "Resource"
	return "Resource"


func _load(path: String, original_path: String, use_sub_threads: bool, cache_mode: int) -> Variant:
	if not FileAccess.file_exists(path):
		push_error("LubanBytesResourceLoader: failed to open " + path)
		return null
	var source := FileAccess.get_file_as_bytes(path)
	if source.size() <= 0:
		var err := FileAccess.get_open_error()
		push_error("LubanBytesResourceLoader: failed to read " + path + ", error: " + str(err))
		return null
	var res := Resource.new()
	res.resource_path = path
	return res
