extends Node2D

func _on_area_2d_body_entered(body):
	print(body.name)
	if body.name == "CharacterBody2D":
		body.coins += 1
		queue_free()
