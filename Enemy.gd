extends KinematicBody
#The navigation mesh is a parent of enemy to allow for movement
onready var nav = get_parent()
#The path is an array that is called upon for the enemy to move along
var path = []
var path_node = 0
#Speed of the enemy when chasing the player
var speed = 50
#Defines the player as the target for the enemy to chase 
onready var player = $"../../Player"
#How much health the enemy has
var health = 100




#When the enemy hit box collides with the player hitbox, the player is damaged
func _on_Area_body_entered(body):
	if (body.name == "Player"): #Determining what will execute this code
		Global.player_health -= 25 #How much health the player loses each time they are hit

#The speed and direction of the enemy movement
func _physics_process(delta):
	if path_node < path.size():
		var direction = (path[path_node] - global_transform.origin)
		if direction.length() < 1: #If the enemy is less than 1 away from the player move to that position
			path_node +=1
		else:
			move_and_slide(direction.normalized() * speed, Vector3.UP)
		
			
func move_to(target_pos):
	path = nav.get_simple_path(global_transform.origin, target_pos)
	path_node = 0
	#player.get_tranform().get_translation()

#How long before the enemy moves after the player
func _on_Timer_timeout():
	move_to(player.global_transform.origin)
#How much damage the enemy takes everytime they are hit with a bullet, if health = 0 the enemy disappers from the game
func take_damage(damage):
	print("ouch")
	health -= 50 #Defined damage that the enemy will take whenever they are hit with the bullet from the player
	if health <=0:
		queue_free()
		get_tree().change_scene("res://Main menu.tscn")
		

