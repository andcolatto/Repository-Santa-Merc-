extends CharacterBody2D

@export var speed: float = 300.0
@onready var IconZ = $CanvasGroup/Zicon

func _ready() -> void:
	# Altera a física para top-down (desliza em superfícies sem checar "chão")
	motion_mode = MOTION_MODE_FLOATING

func _physics_process(_delta: float) -> void:
	var input_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed
	move_and_slide()



#collision for buttons in hud --------------------------------
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Amanda"):
		IconZ.visible = true
		print("yes")
	pass 
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("Amanda"):
		IconZ.visible = false
	pass 
#collision for buttons in hud -----------------------------
