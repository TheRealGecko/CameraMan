extends Area2D


func _process(delta):
	set_collision_layer(get_parent().get_collision_layer())
