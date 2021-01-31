extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var noteLimit = global.controlSegundo

const MusicNote = preload("res://scenes/youthMiniGame/MusicNote.tscn")
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var _timer = Timer.new()
	_timer.set_name("myTimer")
	add_child(_timer)
	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()

func _on_Timer_timeout():
	if global.createdNotes == noteLimit:
		if global.destroyedNotes == noteLimit:
			if global.points > (noteLimit/1.5):
				global.youth = 2
			else:
				global.youth = 1
			get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")
	else:
		var mnote = MusicNote.instance()
		rng.randomize()
		var option = rng.randi_range(1, 4)
		global.createdNotes += 1
		match option:
			1:
				get_node("SpawnerRed").add_child(mnote)
			2:
				mnote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/normal/GameGuitarVerde.png")
				get_node("SpawnerGreen").add_child(mnote)
			3:
				mnote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/normal/GameGuitarAzul.png")
				get_node("SpawnerBlue").add_child(mnote)
			4:
				mnote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/normal/GameGuitarNaranja.png")
				get_node("SpawnerYellow").add_child(mnote)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

	
func _input(event):
	if Input.is_key_pressed(KEY_A):
		if global.red == true:
			global.destroyNote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActRojo.png")
			global.points += 1
			get_node("scoreDisplayer").text = (str(global.points) + "/30 played notes")
			global.red = false
	if Input.is_key_pressed(KEY_S):
		if global.green == true:
			global.destroyNote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActVerde.png")
			global.points += 1
			get_node("scoreDisplayer").text = (str(global.points) + "/30 played notes")
			global.green = false
	if Input.is_key_pressed(KEY_D):
		if global.blue == true:
			global.destroyNote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActAzul.png")
			global.points += 1
			get_node("scoreDisplayer").text = (str(global.points) + "/30 played notes")
			global.blue = false
	if Input.is_key_pressed(KEY_F):
		if global.yellow == true:
			global.destroyNote.get_child(0).texture = load("res://assets/images/youthMiniGame/button/active/GameGuitarActNaranja.png")
			global.points += 1
			get_node("scoreDisplayer").text = (str(global.points) + "/30 played notes")
			global.yellow = false
