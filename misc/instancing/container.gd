extends Node

onready var ball_factory = $ball_factory

func _unhandled_input(event):
	if event.is_echo():
		return
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == BUTTON_LEFT:
			var new_ball = ball_factory.create()
			add_child(new_ball)
