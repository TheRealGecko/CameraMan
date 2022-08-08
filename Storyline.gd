extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	$StartGame.grab_focus()# Replace with function body.


func _on_StartGame_pressed():
	get_tree().change_scene("res://game.tscn")


func _on_MainMenu_pressed():
	get_tree().change_scene("res://MainMenu2.tscn")
