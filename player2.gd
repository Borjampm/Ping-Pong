extends Area2D

@export var speed = 400
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func start(pos):
	position = pos
	position.x = position.x - $Sprite2D.scale[0]/2
	position.y = position.y + $Sprite2D.scale[1]/2
	show()
