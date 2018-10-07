extends Node

onready var cherry_sprite = preload("res://Scenes/cherry.tscn")
var screensize

func _ready():
	screensize = get_viewport().size
	find_node("Timer").start()
	randomize()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Timer_timeout():
	var cherry = cherry_sprite.instance()
	cherry.position.x = rand_range(0, screensize.x)
	cherry.position.y = rand_range(0, screensize.y)
	add_child(cherry)
	
	pass # replace with function body
