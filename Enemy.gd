extends Spatial

onready var nav = get_parent()
var path = []
var path_node = 0
var speed = 10
onready var player = $"Player"


func _on_Area_body_entered(body):
	if (body.name == "Player"):
		Global.player_health -= 10


