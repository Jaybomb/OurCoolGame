extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var speed = 1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
	if Input.is_action_pressed("ui_right"):
		position.x += speed
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
	if Input.is_action_pressed("ui_down"):
		position.y += speed
	pass
	