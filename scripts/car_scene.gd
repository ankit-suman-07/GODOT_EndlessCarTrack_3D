extends CharacterBody3D

@export var SPEED := 40.0
#var gravity := 9.8

func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_back"):
		direction.z += 2
	if Input.is_action_pressed("move_forward"):
		direction.z -= 2

	direction = direction.normalized()

	velocity.x = direction.x * SPEED
	velocity.z = direction.z * SPEED

	

	move_and_slide()
