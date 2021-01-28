extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BackArrow_pressed():
	pass # Replace with function body.
	get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")


func _on_OldMan_pressed():
	pass # Replace with function body.
	get_node("Album").visible = true


func _on_TextureButton_pressed():
	pass # Replace with function body.
	get_node("Album").visible = false


func _on_Child_pressed():
	pass # Replace with function body.
	get_tree().change_scene("res://scenes/childMiniGame/ChildMiniGame.tscn")


func _on_CloseText_pressed():
	pass # Replace with function body.
	get_node("TextExplanation").visible = false
	get_node("TextExplanation/VBoxContainer/TextForExplanation").text = "I dont wanna think about that"


func _on_Object1_pressed():
	pass # Replace with function body.
	if global.child == true:
		get_node("TextExplanation/VBoxContainer/TextForExplanation").text = "This is my spelling trophy"
	get_node("TextExplanation").visible = true
