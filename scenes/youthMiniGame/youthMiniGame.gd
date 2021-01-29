extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const MusicNote = preload("res://scenes/youthMiniGame/MusicNote.tscn")
var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var _timer = Timer.new()
	add_child(_timer)
	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()

func _on_Timer_timeout():
	var mnote = MusicNote.instance()
	rng.randomize()
	var option = rng.randi_range(1, 4)
	match option:
		1:
			get_node("SpawnerRed").add_child(mnote)
		2:
			get_node("SpawnerGreen").add_child(mnote)
		3:
			get_node("SpawnerBlue").add_child(mnote)
		4:
			get_node("SpawnerYellow").add_child(mnote)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	pass # Replace with function body.
	global.youth = true
	get_tree().change_scene("res://scenes/oldManRoom/OldManRoom.tscn")
	#var mnote = MusicNote.instance()
	#get_node("Spawner").add_child(mnote)
func _input(event):
	if Input.is_key_pressed(KEY_A):
		if global.red == true:
			get_node("SpawnerRed").remove_child(global.destroyNote)
	if Input.is_key_pressed(KEY_S):
		if global.green == true:
			get_node("SpawnerGreen").remove_child(global.destroyNote)
	if Input.is_key_pressed(KEY_D):
		if global.blue == true:
			get_node("SpawnerBlue").remove_child(global.destroyNote)
	if Input.is_key_pressed(KEY_F):
		if global.yellow == true:
			get_node("SpawnerYellow").remove_child(global.destroyNote)
