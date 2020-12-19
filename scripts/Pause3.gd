extends Control

func _ready():
	visible = false

func _input(event):
	if event.is_action_pressed("Pause"):
		var pause_state = not get_tree().paused
		get_tree().paused = pause_state
		visible = pause_state

func _on_Button_pressed():
	visible = false
	get_tree().paused = false
	get_tree().change_scene("res://scenes/Menu.tscn")
