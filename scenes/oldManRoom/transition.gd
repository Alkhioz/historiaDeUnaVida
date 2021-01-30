extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	if global.youth == 0:
		if global.child == 1:
			get_node("MessageTransition").text = ""
			get_node("ColorRect").color = Color(0,0,0,1)
			get_node("AudioStreamPlayer").play()
		elif global.child == 2:
			get_node("MessageTransition").text = "Minigame 1 pass" 
	elif global.adult == 0:
		if global.youth == 1:
			get_node("MessageTransition").text = ""
			get_node("ColorRect").color = Color(0,0,0,1)
			get_node("AudioStreamPlayer").play()
		elif global.youth == 2:
			get_node("MessageTransition").text = "Minigame 2 pass"
	else:
		if global.adult == 1:
			get_node("MessageTransition").text = ""
			get_node("ColorRect").color = Color(0,0,0,1)
			get_node("AudioStreamPlayer").play()
		elif global.adult == 2:
			get_node("MessageTransition").text = "Minigame 3 pass"
	yield(get_tree().create_timer(1.5), "timeout")
	get_tree().change_scene("res://scenes/oldManRoom/OldManRoom.tscn")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
