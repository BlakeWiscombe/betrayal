extends Area


var speed : float = 250.0
var damage : int = 1

func _process (delta):
	# move the bullet forwards
	translation -= global_transform.basis.z * speed * delta
	

#What happens when the hitbox of the player bullet collides with the enemy
func _on_Bullet_body_entered(body):
	if body.has_method("take_damage"): #Allows the enemy to be destroyed
		body.take_damage(damage)
		destroy()

func destroy ():
	# destroys the bullet
	queue_free()
