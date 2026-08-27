extends CharacterBody2D

@export var speed: float = 300.0

func _ready() -> void:
	# Altera a física para top-down (desliza em superfícies sem checar "chão")
	motion_mode = MOTION_MODE_FLOATING

func _physics_process(_delta: float) -> void:
	var input_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	move_and_slide()
