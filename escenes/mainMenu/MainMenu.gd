extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewGameButton_pressed():
	pass # Replace with function body.
	get_tree().change_scene("res://escenes/oldManRoom/OldManRoom.tscn")


func _on_Exit_pressed():
	pass # Replace with function body.
	get_tree().quit()
