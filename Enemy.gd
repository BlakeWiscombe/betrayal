extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


func _on_Area_body_entered(body):
	if (body.name == "Player"):
		Global.player_health -=10


