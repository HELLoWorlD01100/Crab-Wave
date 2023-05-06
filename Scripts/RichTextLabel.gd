extends RichTextLabel


@onready var player: Node2D = $Player/CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready():
	text = "0"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (player != null):
		text = str(player.coins)
