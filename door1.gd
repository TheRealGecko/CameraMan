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
	if active && position.x >= -100:
		print("it works!")
		move_and_slide(Vector2(-100, 0))
		position.y = 0

func _on_button1_body_entered(body):
	active = true
