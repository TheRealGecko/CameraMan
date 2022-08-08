extends Control

func _ready():
	$MarginContainer/VBoxContainer/Start.grab_focus()

func _on_Start_pressed():
	get_tree().change_scene("res://game.tscn")

func _on_Exit_pressed():
	#get_tree().change_scnee("res://game.tscn")
	pass

func _on_Instructions_pressed():
	var instructions = load("res://res/Instructions.tscn").instance()
	get_tree().current_scene.add_child(instructions)

func _on_Storyline_pressed():
	get_tree().change_scene("res://res/Storyline.tscn")

