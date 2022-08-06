extends Node2D

onready var apoc_map = $Apocalyptic_TileMap
onready var peace_map = $Peacful_TileMap
onready var sprite = $player
onready var moving_platform = $MovingPlatform

func _ready():
	apoc_map.visible = true
	peace_map.visible = false
	sprite.set_collision_mask_bit(2, true)
	sprite.set_collision_mask_bit(3, false)
	
#var click_timer = Timer.new()

"""func _process(delta):
	if Input.is_action_just_pressed("toggle"):
		click_timer = get_tree().create_timer(0.1)
	if  Input.is_action_pressed("toggle") and click_timer != null and click_timer.get_time_left() <= 0:
		print("works!")
		sprite.set_collision_mask_bit(2, !sprite.get_collision_mask_bit(2))
		sprite.set_collision_mask_bit(3, !sprite.get_collision_mask_bit(3))
		print(sprite.get_collision_mask_bit(3))
		apoc_map.visible = !apoc_map.visible
		peace_map.visible = !peace_map.visible
		click_timer = null"""
