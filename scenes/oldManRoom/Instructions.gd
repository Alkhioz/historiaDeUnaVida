extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var seconds = 3
	match global.instruction_controler:
		0:
#			get_node("intructionText").text = "Press one of the buttons"
			get_node("image").texture = load("res://assets/images/oldManRoom/transitions/transitionChild.png")
			yield(get_tree().create_timer(seconds), "timeout")
			get_tree().change_scene("res://scenes/childMiniGame/ChildMiniGame.tscn")
		1:
#			get_node("intructionText").text  = "Use A,S,D,F to play the notes"
			get_node("image").texture = load("res://assets/images/oldManRoom/transitions/transitionYouth.png")
			yield(get_tree().create_timer(seconds), "timeout")
			get_tree().change_scene("res://scenes/youthMiniGame/youthMiniGame.tscn")
		2:
#			get_node("intructionText").text = "Play A to jump and evade obstacles"
			get_node("image").texture = load("res://assets/images/oldManRoom/transitions/transitionAdult.png")
			yield(get_tree().create_timer(seconds), "timeout")
			get_tree().change_scene("res://scenes/adultMiniGame/adultMiniGame.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
