extends KinematicBody2D

var SPEED = 700
var ball

func _ready():
	ball = get_parent().find_node("Ball")

func _physics_process(delta):
	move_and_slide(Vector2(0,get_opponent_direction()) * changeSpeed(SPEED))

func get_opponent_direction():
	if (abs(ball.position.y-position.y) > 10) and ball.position.x > 540: #AI move only the ball get closer
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0

func changeSpeed(SPEED):
	return SPEED
