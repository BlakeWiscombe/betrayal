extends Button

export(String) var scene_to_load


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


func _on_Button_pressed():
	get_tree().change_scene("res://Main menu.tscn")
