extends Node2D
@onready var animation_player = $CharacterBody2D/AnimationPlayer
@onready var body = $CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if animation_player != null:
		if body.state == body.State.IDLE:
			animation_player.play("idle")

		if body.state == body.State.MOVE:
			animation_player.play("go")
