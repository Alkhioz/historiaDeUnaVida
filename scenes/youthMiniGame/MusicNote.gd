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
			self.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActRojo.png")
		"PlayNoteGreen":
			global.green = true
			self.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActVerde.png")
		"PlayNoteBlue":
			global.blue = true
			self.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActAzul.png")
		"PlayNoteYellow":
			global.yellow = true
			self.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActNaranja.png")
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
			global.red = false
		"PlayNoteGreen":
			global.green = false
		"PlayNoteBlue":
			global.blue = false
		"PlayNoteYellow":
			global.yellow = false
	get_node("Sprite").texture = load("res://assets/images/youthMiniGame/button/fail/GameGuitarFail.png")
