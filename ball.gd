extends Area2D

@export var speed = 400
var velocity
var screen_size
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	velocity = Vector2(1,1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocity * delta
	if position.y < 0:
		velocity[1] = velocity[1] * -1
		position.y = 0
	elif position.y > screen_size[1]:
		velocity[1] = velocity[1] * -1
		position.y = screen_size[1]
	if position.x < 0:
		velocity[0] = velocity[0] * -1
		position.x = 0
	elif position.x > screen_size[0]:
		velocity[0] = velocity[0] * -1
		position.x = screen_size[0]
	
	
func start(pos):
	position = pos
	velocity = velocity * speed
	show()


func _on_player_area_entered(area):
	velocity[0] = velocity[0] * -1


func _on_player_2_area_entered(area):
	velocity[0] = velocity[0] * -1
