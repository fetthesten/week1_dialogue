extends KinematicBody2D

export var MOVEMENT_SPEED = 6000

var move_vec = Main.V2_ZERO

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if move_vec != Main.V2_ZERO:
		move_and_slide(move_vec * MOVEMENT_SPEED * delta)
		move_vec = Main.V2_ZERO

func move(movement):
	move_vec = movement