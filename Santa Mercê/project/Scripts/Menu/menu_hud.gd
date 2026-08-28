extends CanvasGroup

@onready var NGb = $NG # is a variable for get New Game button
@onready var ESFX = $"../NewGame"
@onready var SeFX = $"../Select"
@onready var cam2D = $"../Camera2D"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if NGb.button_pressed:
		ESFX.play()
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res://Scenes/debug.tscn") #Simple Script for change scenes 
	
	pass
