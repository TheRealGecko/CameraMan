extends KinematicBody2D

onready var sprite = get_node("AnimatedSprite")
var velocity = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -200
		sprite.play("walk")
		sprite.flip_h = true
	elif Input.is_action_pressed("right"):
		velocity.x = 200
		sprite.play("walk")
		sprite.flip_h = false
	else: 
		velocity.x = 0
		sprite.play("idle")
		
	if !is_on_floor(): 
		velocity.y += 10
	
	if !is_on_floor():
		sprite.play("jump")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -350

	move_and_slide(velocity, Vector2.UP)



func _on_liquid_body_entered(body):
	position.x = 62
	position.y = 371


func _on_button1_body_entered(body):
	if get_parent().get_node("Peacful_TileMap/button1/button").get_animation() == "up":
		get_parent().get_node("Peacful_TileMap/button1/button").play("down")

func _on_button2_body_entered(body):
	if get_parent().get_node("Peacful_TileMap/button2/button").get_animation() == "up":
		get_parent().get_node("Peacful_TileMap/button2/button").play("down")

func _on_acid_drop_body_entered(body):
	position.x = 62
	position.y = 371

