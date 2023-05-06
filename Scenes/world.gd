extends Node2D
@onready var player_camera = $Player/CharacterBody2D/Camera2D
@onready var sand = $Sand
@onready var player = $Player/CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if player_camera != null:
		var sand_rect = sand.get_rect()
		player_camera.limit_top = sand_rect.position.y
		player_camera.limit_left = sand_rect.position.x
		player_camera.limit_right = sand_rect.end.x
		player_camera.limit_bottom = sand_rect.end.y
		
	if player != null:
		var sand_rect = sand.get_rect()
		player.min_x = sand_rect.position.x
		player.max_x = sand_rect.end.x
		player.min_y = sand_rect.position.y
		player.max_y = sand_rect.end.y
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
