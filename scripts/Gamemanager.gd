extends Node

var current_level = 1
var area_path = "res://Levels/"

func next_level():
	current_level += 1
	var full_path = area_path + "level_" + str(current_level) + ".tscn"
	if !full_path:
		print("error: level file not found!")
		return
	get_tree().change_scene_to_file(full_path)
	print("Player is sent to next level")
