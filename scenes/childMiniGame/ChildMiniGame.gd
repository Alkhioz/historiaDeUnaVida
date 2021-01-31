extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()
var noteLimit = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var _timer = Timer.new()
	_timer.set_name("myTimer")
	add_child(_timer)
	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.5)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()


func _on_Timer_timeout():
	if global.vocalNotes == noteLimit:
		if global.vocalPoints > noteLimit/1.5:
			global.child = 2
			get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")
		else:
			global.child = 1
			get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")
	else:
		rng.randomize()
		var option = rng.randi_range(1, 4)
		get_node("screen").texture = load("res://assets/images/ChildMiniGame/screenKey.png")
		yield(get_tree().create_timer(0.5), "timeout")
		global.vocalNotes += 1
		match option:
			1:
				global.vocalKey = "a"
				get_node("screen").texture = load("res://assets/images/ChildMiniGame/screenKeyA.png")
			2:
				global.vocalKey = "s"
				get_node("screen").texture = load("res://assets/images/ChildMiniGame/screenKeyS.png")
			3:
				global.vocalKey = "d"
				get_node("screen").texture = load("res://assets/images/ChildMiniGame/screenKeyD.png")
			4:
				global.vocalKey = "f"
				get_node("screen").texture = load("res://assets/images/ChildMiniGame/screenKeyF.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if global.vocalKey != "":
		if Input.is_key_pressed(KEY_A):
			if global.vocalKey == "a":
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerOk.png")
				global.vocalPoints += 1
			else:
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerNo.png")
		if Input.is_key_pressed(KEY_S):
			if global.vocalKey == "s":
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerOk.png")
				global.vocalPoints += 1
			else:
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerNo.png")
		if Input.is_key_pressed(KEY_D):
			if global.vocalKey == "d":
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerOk.png")
				global.vocalPoints += 1
			else:
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerNo.png")
		if Input.is_key_pressed(KEY_F):
			if global.vocalKey == "f":
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerOk.png")
				global.vocalPoints += 1
			else:
				get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answerNo.png")
		yield(get_tree().create_timer(0.5), "timeout")
		global.vocalKey = ""
		get_node("feedback").texture = load("res://assets/images/ChildMiniGame/answer.png")
		

func _on_Button_pressed():
	pass # Replace with function body.
	global.child = 2
	get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")


func _on_Button2_pressed():
	pass # Replace with function body.
	global.child = 1
	get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")
