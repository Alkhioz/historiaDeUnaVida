extends VisibilityEnabler2D


var motion = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	motion.y = 300*delta
	translate(motion)
	pass


func _on_MusicNote_body_entered(body):
	queue_free()
	pass # Replace with function body.


func _on_VisibilityEnabler2D_screen_exited():
	queue_free()
	pass # Replace with function body.
