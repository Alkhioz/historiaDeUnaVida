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


func _on_VisibilityEnabler2D_screen_exited():
	global.destroyedNotes += 1
	queue_free()
	pass # Replace with function body.


func _on_MusicNote_body_exited(body):
	pass # Replace with function body.
	var notePlayerNames = body.get_name()
	match notePlayerNames:
		"PlayNoteRed":
			if global.red == true:
				global.red = false
				get_node("Sprite").texture = load("res://assets/images/youthMiniGame/button/fail/GameGuitarFail.png")
				get_node("AudioStreamPlayer").play()
		"PlayNoteGreen":
			if global.green == true:
				global.green = false
				get_node("Sprite").texture = load("res://assets/images/youthMiniGame/button/fail/GameGuitarFail.png")
				get_node("AudioStreamPlayer").play()
		"PlayNoteBlue":
			if global.blue == true:
				global.blue = false
				get_node("Sprite").texture = load("res://assets/images/youthMiniGame/button/fail/GameGuitarFail.png")
				get_node("AudioStreamPlayer").play()
		"PlayNoteYellow":
			if global.yellow == true:
				global.yellow = false
				get_node("Sprite").texture = load("res://assets/images/youthMiniGame/button/fail/GameGuitarFail.png")
				get_node("AudioStreamPlayer").play()
	
