extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$AnimatedSprite2D.set_frame_and_progress(int(randf_range(1, 4)), 1)
	randomize()
	if int(randf_range(1, 10)) == 1:
		$AnimatedSprite2D.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
