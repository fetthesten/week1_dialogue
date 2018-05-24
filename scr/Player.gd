extends 'res://scr/mover.gd'

func _ready():

	pass

func _process(delta):
	var movement = Main.V2_ZERO
	if Input.is_action_pressed('ui_up'):
		movement.y = -1.0
	elif Input.is_action_pressed('ui_down'):
		movement.y = 1.0
	if Input.is_action_pressed('ui_left'):
		movement.x = -1.0
	elif Input.is_action_pressed('ui_right'):
		movement.x = 1.0
	if movement != Main.V2_ZERO:
		move(movement)