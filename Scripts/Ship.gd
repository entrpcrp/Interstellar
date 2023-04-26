extends CharacterBody2D
var speed = 1
var avrot_speed = 0.0001
var rot_speed:float = 0
var point = Vector2()
var lastDeg = 0
var sx = 0
var sy = 0w
var last_rot:float
func _ready():
	$Idle.play("idle")
	pass
func _physics_process(delta):
	# print(velocity.angle())
	#print(velocity.x)
	print(delta)
	if Input.is_action_pressed("up"):
		velocity.y -= speed
		point.y -= speed
		last_rot = rotation
		$Idle.play("engine_start")
	if Input.is_action_pressed("down"):
		velocity.y += speed
		point.y += speed 
		last_rot = rotation
		$Idle.play("thrust")
	if Input.is_action_pressed("left"):
		velocity.x -= speed
		point.x -= speed 
	if Input.is_action_pressed("right"):
		velocity.x += speed
		point.x += speed 
	if Input.is_action_pressed("rot_left"):
		rot_speed -= avrot_speed
	if Input.is_action_pressed("rot_right"):
		rot_speed += avrot_speed
	velocity = point.rotated(last_rot)
	rotate(rot_speed)
	move_and_slide()
	if Input.is_action_just_released("up"):
		$Idle.play_backwards("engine_start")

