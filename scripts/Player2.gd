extends KinematicBody2D

const SPEED = 450

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if(Input.is_action_pressed("ui_up")):
		velocity.y = velocity.y - 1
	elif(Input.is_action_pressed("ui_down")):
		velocity.y = velocity.y + 1
	velocity = move_and_slide(velocity * SPEED)
	velocity.y = lerp(velocity.y,0,0.1)

