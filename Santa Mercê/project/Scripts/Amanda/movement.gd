extends CharacterBody2D

@export var speed: float = 99.0
var run = 300
@onready var IconZ = $CanvasGroup/Zicon

func _ready() -> void:
	motion_mode = CharacterBody2D.MOTION_MODE_FLOATING

func _physics_process(_delta: float) -> void:
	var input_vector: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	velocity = input_vector * speed
	
	# run system
	if Input.is_action_pressed("Run"):
		speed = 200
	else: speed = 99.0
	#run system

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
