extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


func _on_Disable_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func _on_Enable_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Return_to_main_menu_pressed():
	get_tree().change_scene("res://Main menu.tscn")
