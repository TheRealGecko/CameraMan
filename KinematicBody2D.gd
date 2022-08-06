extends KinematicBody2D

onready var sprite = get_node("AnimatedSprite")
var velocity = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -100
		sprite.play("walk")
		sprite.flip_h = true
	elif Input.is_action_pressed("right"):
		velocity.x = 100
		sprite.play("walk")
		sprite.flip_h = false
	else:
		velocity.x = 0
		sprite.play("idle")
		
	velocity.y += 10
	
	if !is_on_floor():
		sprite.play("jump")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -250

	move_and_slide(velocity, Vector2.UP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
