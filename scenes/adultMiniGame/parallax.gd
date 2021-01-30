extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _physics_process(delta):
	motion.x = -280*delta
	translate(motion)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
