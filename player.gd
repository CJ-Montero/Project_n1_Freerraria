extends Area2D

@export var speed : int = 400
var screen_size : Vector2

func _ready() -> void:
	SystemSave.loadData({"Speed" : speed})
	SystemSave.saveGame()
	SystemSave.loadGame()
	screen_size = get_viewport_rect().size
	pass


func _process(delta: float) -> void:
	var velocity : Vector2 = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocity += Vector2(0,-1)
	if Input.is_action_pressed("move_down"):
		velocity += Vector2(0,1)
	if Input.is_action_pressed("move_right"):
		velocity += Vector2(1,0)
	if Input.is_action_pressed("move_left"):
		velocity += Vector2(-1,0)
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	position = position.clamp(Vector2.ZERO,screen_size)
	pass
