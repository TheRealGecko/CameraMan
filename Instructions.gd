extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$StartGame.grab_focus()# Replace with function body.


func _on_Start_Game_pressed():
	get_tree().change_scene("res://game.tscn")


func _on_Main_Menu_pressed():
	get_tree().change_scene("res://MainMenu2.tscn")


func _on_StartGame_pressed():
	pass # Replace with function body.


func _on_MainMenu_pressed():
	pass # Replace with function body.
