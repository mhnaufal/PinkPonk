extends KinematicBody2D

export var SPEED = 600
var velocity = Vector2.ZERO

func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]

func _physics_process(delta):
	var collision_object = move_and_collide(velocity * SPEED * delta)
	if collision_object:	#IF EXIST or IF HAPPEN
		velocity = velocity.bounce((collision_object.normal))
		SPEED = SPEED + 5
		$Sound.play()

func stop_ball():
	SPEED = 0
	
func restart_ball():
	SPEED = 600
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.8,0.8][randi() % 2]
