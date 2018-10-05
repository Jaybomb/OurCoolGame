extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	#if BUTTON_LEFT.isPressed()
	if Input.is_action_pressed("ui_left"):
		position.x -= 1
	if Input.is_action_pressed("ui_right"):
		position.x += 1
	if Input.is_action_pressed("ui_up"):
		position.y -= 1
	if Input.is_action_pressed("ui_down"):
		position.y += 1
		
	pass
