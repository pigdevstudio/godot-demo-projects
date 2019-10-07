extends Position2D

export (PackedScene) var ball_scene = preload("res://ball.tscn")

func create():
	var instance = ball_scene.instance()
	instance.global_position = get_global_mouse_position()
	return instance
