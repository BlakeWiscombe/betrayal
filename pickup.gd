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


#Defining what happens when the player collides with the pick up
func _on_Area_body_entered(body):
			#rint ("Collided")
	if (body.name == "Player"):
		Global.current_score += 30 #How much the score increases by when the player hits this
		#pr (Global.current_score)
		queue_free() #Deleted from the game to help the processing power
