extends KinematicBody2D

export var speed = 9.8
const UP_DIRECTION = Vector2(0,-1)

func _physics_process(delta):
	var motion = Vector2()
	if Input.is_action_pressed("ui_right"):
		motion.x += 1
	elif Input.is_action_pressed("ui_left"):
		motion.x -= 1
	
	if(is_on_floor()):
		if Input.is_action_just_pressed("ui_up"):
			motion.y -= 1
		else:
			motion.y += 1
			
	var velocity = motion.normalized()*speed
	
	move_and_slide(velocity,UP_DIRECTION)

