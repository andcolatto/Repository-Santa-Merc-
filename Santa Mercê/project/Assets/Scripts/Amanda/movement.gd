extends CharacterBody2D

@onready var IconZ = $CanvasGroup/Zicon

const walk_speed: float = 100.0
const run_speed: float = 200.0
var speed = 0

func _ready() -> void:
	motion_mode = CharacterBody2D.MOTION_MODE_FLOATING
	
func _physics_process(_delta: float) -> void:
	var input_vector: Vector2 = Input.get_vector("Left", "Right", "Up", "Down")
	
	# run system
	if Input.is_action_pressed("Run"):
		speed = run_speed
	else: speed = walk_speed
	#run system
	
	#apply speed * direction(input_vector) to velocity (y axis)
	#half vertical movement speed for isoemtric movement
	velocity.y = input_vector.y * speed / 2
	#apply speed * direction(input_vector) to velocity (x axis)
	velocity.x = input_vector.x * speed
	
	move_and_slide()
	
#region collision for buttons in hud
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Amanda"):
		IconZ.visible = true
		print("yes")
	pass 
func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("Amanda"):
		IconZ.visible = false
	pass 
#collision for buttons in hud
