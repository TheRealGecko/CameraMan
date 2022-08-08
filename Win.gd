extends Node2D


func _input(event):
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://MainMenu2.tscn")
