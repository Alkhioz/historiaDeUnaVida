extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var resultado = global.child + global.youth + global.adult
	if resultado > 4:
#		get_node("Message").text = "GOOD END"
		get_node("Sprite").texture = load("res://assets/images/endings/goodEnd.png")
	elif resultado == 4:
#		get_node("Message").text = "NEUTRAL END"
		get_node("Sprite").texture = load("res://assets/images/endings/neutralEnd.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	pass # Replace with function body.
	get_tree().quit()
