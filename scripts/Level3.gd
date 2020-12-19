extends Node2D

var PlayerScore = 0
var OpponentScore = 0

func _ready():
	$Timer.start()
	$Countdown.visible = true
	get_tree().call_group("BallGroup","stop_ball")

func _on_Left_body_entered(body):
	$Ball.position = Vector2(640,360)
	OpponentScore += 1
	get_tree().call_group("BallGroup","stop_ball")
	$ScoreSound.play()
	if PlayerScore==5 or OpponentScore==5:
		if PlayerScore>OpponentScore:
			get_tree().change_scene("res://scenes//Victory2.tscn")	#Player
		else:
			get_tree().change_scene("res://scenes/Victory3.tscn")	#Opponent
	$Timer.start()
	$Countdown.visible = true
	$Player.position.y = 360
	$Player2.position.y = 360
	$Player.position.x = 72
	$Player2.position.x = 1280 - 72
	
func _on_Right_body_entered(body):
	$Ball.position = Vector2(640,360)
	PlayerScore += 1
	get_tree().call_group("BallGroup","stop_ball")
	$ScoreSound.play()
	if PlayerScore==5 or OpponentScore==5:
		if PlayerScore>OpponentScore:
			get_tree().change_scene("res://scenes/Victory2.tscn")	#Player
		else:
			get_tree().change_scene("res://scenes/Victory3.tscn")	#Opponent
	$Timer.start()
	$Countdown.visible = true
	$Player.position.y = 360
	$Player2.position.y = 360
	$Player.position.x = 72
	$Player2.position.x = 1280 - 72
	
func _process(delta):
	$Scores/PlayerScore.text = str(PlayerScore)
	$Scores/OpponentScore.text = str(OpponentScore)
	$Countdown.text = str(int($Timer.time_left) + 1)

func _on_Timer_timeout():
	get_tree().call_group("BallGroup","restart_ball")
	$Countdown.visible = false

