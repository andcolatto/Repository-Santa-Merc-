extends Node

#this script will always be running

var fullscreen = false

func _ready() -> void:
	get_window().mode = Window.MODE_WINDOWED
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Fullscreen"):
		if fullscreen == false:
			fullscreen = true
			get_window().mode = Window.MODE_FULLSCREEN
		else:
			fullscreen = false
			get_window().mode = Window.MODE_WINDOWED
