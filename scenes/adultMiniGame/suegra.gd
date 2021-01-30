extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_suegra_body_entered(body):
	pass # Replace with function body.
	if body.get_name() == "player":
		body.play_death()
		yield(get_tree().create_timer(0.5), "timeout")
		global.adult = 1
		get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")
