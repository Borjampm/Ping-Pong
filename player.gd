extends Area2D

@export var speed = 400
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1 
	velocity = velocity * speed
	
	position += velocity * delta
	position.y = clamp(position.y, 50, screen_size[1]-50)
	
func start(pos):
	position = pos
	position.x = position.x + $Sprite2D.scale[0]/2
	show()
