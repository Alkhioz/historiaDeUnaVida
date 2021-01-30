extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var resultado = global.child + global.youth + global.adult
	if resultado > 4:
		get_node("Message").text = "GOOD END"
	elif resultado == 4:
		get_node("Message").text = "NEUTRAL END"
	else:
		get_node("Message").text = "BAD END"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	pass # Replace with function body.
	get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")
