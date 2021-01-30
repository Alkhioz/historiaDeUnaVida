extends Area2D

var motion = Vector2()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	motion.x = -350*delta
	translate(motion)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Goal_body_entered(body):
	pass # Replace with function body.
	if body.get_name() == "player":
		global.adult = 2
		get_tree().change_scene("res://scenes/oldManRoom/transition.tscn")
