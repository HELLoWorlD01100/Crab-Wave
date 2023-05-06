extends CharacterBody2D


const SPEED = 50.0
const JUMP_VELOCITY = -400.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var coins = 0
enum State { MOVE, IDLE }
@export var state = State.IDLE


func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		state = State.MOVE
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		state = State.MOVE
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	if velocity.is_zero_approx():
		state = State.IDLE

	move_and_slide()
