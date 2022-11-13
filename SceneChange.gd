extends Button

export(String) var scene_to_load




#Load the player into the main game
func _on_Button_pressed():
	get_tree().change_scene(scene_to_load)

#Return the player to the developer mode
func _on_Quit_pressed():
	get_tree().quit()

#Bring the player to the optoins menu when pressed
func _on_Button3_pressed():
	get_tree().change_scene("res://Options menu.tscn")
