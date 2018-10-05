extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export(int) var defaultSpeed
var shiftSpeedMultiplier = 10

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	var currentSpeed = defaultSpeed
	if Input.is_key_pressed(KEY_SHIFT):
		currentSpeed = currentSpeed * shiftSpeedMultiplier
	
	if Input.is_action_pressed("ui_left"):
		position.x -= currentSpeed
	if Input.is_action_pressed("ui_right"):
		position.x += currentSpeed
	if Input.is_action_pressed("ui_up"):
		position.y -= currentSpeed
	if Input.is_action_pressed("ui_down"):
		position.y += currentSpeed
	pass
	