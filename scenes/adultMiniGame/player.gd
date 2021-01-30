extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (int) var run_speed = 100
export (int) var jump_speed = -600
export (int) var gravity = 1200

var velocity = Vector2()
var jumping = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	var jump = Input.is_key_pressed(KEY_A)
	
	if jump and is_on_floor():
		jumping = true
		velocity.y = jump_speed

func play_hit():
	get_node("hit").play()

func play_death():
	get_node("death").play()	
	
func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	if jumping and is_on_floor():
		jumping = false
	velocity = move_and_slide(velocity, Vector2(0, -1))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
