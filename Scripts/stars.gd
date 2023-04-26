extends Node2D

var star = preload("res://Scenes/BackgroundStar.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(1, int(randf_range(2000, 15000))):
		randomize()
		var new_item = star.instantiate()
		add_child(new_item)
		new_item.position = Vector2(int(randf_range(-3000, 3000)), int(randf_range(-3000, 3000)))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
