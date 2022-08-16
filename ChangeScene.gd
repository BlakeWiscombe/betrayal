extends Node2D


export(String) var scene_to_load


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().change_scene(scene_to_load)

func _on_Button_pressed():
	pass # Replace with function body.
