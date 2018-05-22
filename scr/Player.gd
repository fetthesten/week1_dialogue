extends Node2D

onready var mover = $KinematicBody2D

func _ready():

	pass

func _process(delta):
	var move = Main.V2_ZERO
	if Input.is_action_pressed('ui_up'):
		move.y = -1.0
	elif Input.is_action_pressed('ui_down'):
		move.y = 1.0
	if Input.is_action_pressed('ui_left'):
		move.x = -1.0
	elif Input.is_action_pressed('ui_right'):
		move.x = 1.0
	if move != Main.V2_ZERO:
		mover.move(move)