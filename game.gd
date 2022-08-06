extends Node2D

onready var apoc_map = $Apocalyptic_TileMap
onready var peace_map = $Peacful_TileMap

func _ready():
	apoc_map.visible = true
	peace_map.visible = false
	

#func _process(delta):
	#if Input.is_action_just_pressed()
