extends Area2D


var motion = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	motion.y = 300*delta
	translate(motion)
	pass


func _on_MusicNote_body_entered(body):
	var notePlayerName = body.get_name()
	match notePlayerName:
		"PlayNoteRed":
			global.red = true
		"PlayNoteGreen":
			global.green = true
		"PlayNoteBlue":
			global.blue = true
		"PlayNoteYellow":
			global.yellow = true
	global.destroyNote = self
#	#queue_free()
#	pass # Replace with function body.


func _on_VisibilityEnabler2D_screen_exited():
	queue_free()
	pass # Replace with function body.


func _on_MusicNote_body_exited(body):
	pass # Replace with function body.
	var notePlayerNames = body.get_name()
	match notePlayerNames:
		"PlayNoteRed":
			global.red = false
		"PlayNoteGreen":
			global.green = false
		"PlayNoteBlue":
			global.blue = false
		"PlayNoteYellow":
			global.yellow = false
