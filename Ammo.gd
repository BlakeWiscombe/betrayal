extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



#Called upon everytime that the player collides with one of the pick up instances in the 3d environment
func _on_Area_body_entered(body):
			#rint ("Collided")
	if (body.name == "Player"): #When the player enters the hitbox this code will execute
		Global.current_score += 30 #declaring how much the score or ammunition increases each time the player interacts with the pick up
		#pr (Global.current_score)
		queue_free() #Once the player interacts with the collsion of this, it is deleted from the game, this helps processing power
