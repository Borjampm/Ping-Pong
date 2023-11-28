extends Node

var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport().size
	new_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func new_game():
	$Player.start($PlayerStartPosition.position)
	$Player2StartPosition.position = Vector2(screen_size[0], 0)
	$Player2.start($Player2StartPosition.position)
	
