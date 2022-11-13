extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.

#Hiding the mouse during gameplay
func _on_Disable_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

#making the mouse visible during gameplay
func _on_Enable_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

#return the player to the main menu so they can the game
func _on_Return_to_main_menu_pressed():
	get_tree().change_scene("res://Main menu.tscn")
