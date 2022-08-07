extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if position.y <= 568:
		move_and_slide(Vector2(0, 500))
	else:
		position.y = -246
	if get_tree().get_root().get_node("Node2D/Apocalyptic_TileMap").is_visible() == false:
		set_collision_layer(0)
		$area.set_collision_layer(0)
	else:
		set_collision_layer(4)
		$area.set_collision_layer(4)
