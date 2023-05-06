extends RichTextLabel


@onready var player: Node2D = get_parent().get_parent().get_node("CharacterBody2D")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player != null:
		text = str(player.coins)
	else: text = "0"
