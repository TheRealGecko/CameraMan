extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var active = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	set_collision_layer(get_parent().get_collision_layer())
	if active && position.y >= -132:
		move_and_slide(Vector2(0, -200))
		position.x = 1456
		print(position.y)

func _on_button2_body_entered(body):
	active = true
