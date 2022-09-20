extends Button

export(String) var scene_to_load





func _on_Button_pressed():
	get_tree().change_scene(scene_to_load)


func _on_Quit_pressed():
	get_tree().quit()
