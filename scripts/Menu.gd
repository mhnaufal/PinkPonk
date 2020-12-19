extends Node2D
onready var target = get_node("res://scenes/Level.tscn/Opponents")

func _on_Easy_pressed():
	get_tree().change_scene("res://scenes/Level.tscn")

func _on_Button_pressed():
	get_tree().quit()	

func _on_Hard_pressed():
	get_tree().change_scene("res://scenes/Level2.tscn")

func _on_Mull_pressed():
	get_tree().change_scene("res://scenes/Level3.tscn")
