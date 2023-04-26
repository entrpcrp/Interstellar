extends Camera2D

var zoomfactor = 1
var zoomspeed = 0.1
var zoomstep = 0.03
var factorstep = 0.01


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#zoom.x = lerp(zoom.x, zoomfactor*zoom.x, zoomspeed+delta)
	#zoom.y = lerp(zoom.y, zoomfactor*zoom.y, zoomspeed+delta)
	zoom.x = clamp(zoom.x, 0.9, 20)
	zoom.y = clamp(zoom.y, 0.9, 20)
	
	if zoomfactor > 1:
		zoomfactor -= factorstep
	elif zoomfactor < 1:
		zoomfactor += factorstep
	if Input.is_action_pressed("plus"):
		zoom.x += zoomstep
		zoom.y += zoomstep
	if Input.is_action_pressed("minus"):
		zoom.x -= zoomstep
		zoom.y -= zoomstep

