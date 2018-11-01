extends Node2D

var bar_red = preload("res://Assets/UI/barHorizontal_red_mid 200.png")
var bar_green = preload("res://Assets/UI/barHorizontal_green_mid 200.png")
var bar_yellow = preload("res://Assets/UI/barHorizontal_yellow_mid 200.png")

func _ready():
	for node in get_children():
		node.hide()

func _process(delta):
	global_rotation = 0

func update_healthbar(value):
	$HealtBar.texture_progress = bar_green
	if value < 60:
		$HealtBar.texture_progress = bar_yellow
	if value < 25:
		$HealtBar.texture_progress = bar_red
	if value < 100:
		$HealtBar.show()
				
	$HealtBar.value = value