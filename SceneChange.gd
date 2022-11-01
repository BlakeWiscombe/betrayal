extends Button

export(String) var scene_to_load





func _on_Button_pressed():
	get_tree().change_scene(scene_to_load)


func _on_Quit_pressed():
	get_tree().quit()


func _on_Button3_pressed():
	get_tree().change_scene("res://Options menu.tscn")
