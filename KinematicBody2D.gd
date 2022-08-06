extends KinematicBody2D

var velocity = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -100
		
	elif Input.is_action_pressed("right"):
		velocity.x = 100
		
	
	move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
