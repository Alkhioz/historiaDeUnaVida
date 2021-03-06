extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	if global.child > 0:
		get_node("Album/Youth").disabled = false
		if global.child == 2:
			get_node("Object1").texture_hover = load("res://assets/images/oldManRoom/mainroom/trophy/GameTrophyColor2.png")
			get_node("Object1").texture_normal = load("res://assets/images/oldManRoom/mainroom/trophy/GameTrophyColor1.png")
			get_node("Album/Child").texture_normal = load("res://assets/images/oldManRoom/album/child/GamePolaroidSuccess.png")
		else:
			get_node("Album/Child").texture_normal = load("res://assets/images/oldManRoom/album/GamePolaroidRota.png")
		get_node("Album/Child").disabled = true
	if global.youth > 0:
		get_node("Album/Adult").disabled = false
		if global.youth == 2:
			get_node("Object3").texture_hover = load("res://assets/images/oldManRoom/mainroom/bass/bassColor2.png")
			get_node("Object3").texture_normal = load("res://assets/images/oldManRoom/mainroom/bass/bassColor1.png")
			get_node("Album/Youth").texture_normal = load("res://assets/images/oldManRoom/album/youth/GamePolaroidSuccessT.png")
		else:
			get_node("Album/Youth").texture_normal = load("res://assets/images/oldManRoom/album/GamePolaroidRota.png")
		get_node("Album/Youth").disabled = true
	if global.adult > 0:
		get_node("Album/Old").disabled = false
		if global.adult == 2:
			get_node("Object2").texture_hover = load("res://assets/images/oldManRoom/mainroom/photo/photoColor2.png")
			get_node("Object2").texture_normal = load("res://assets/images/oldManRoom/mainroom/photo/photoColor1.png")
			get_node("Album/Adult").texture_normal = load("res://assets/images/oldManRoom/album/adult/GamePolaroidSuccessA.png")
		else:
			get_node("Album/Adult").texture_normal = load("res://assets/images/oldManRoom/album/GamePolaroidRota.png")
		get_node("Album/Adult").disabled = true
	if global.child > 0 and global.youth > 0  and global.adult > 0:
		var resultado = global.child + global.youth + global.adult
		if resultado > 4:
			get_node("Album/Old").texture_normal = load("res://assets/images/oldManRoom/album/old/GamePolaroidGood.png")
			get_node("Album/Old").texture_hover = load("res://assets/images/oldManRoom/album/old/GamePolaroidGoodHover.png")
		elif resultado == 4:
			get_node("Album/Old").texture_normal = load("res://assets/images/oldManRoom/album/old/GamePolaroidMeh.png")
			get_node("Album/Old").texture_hover = load("res://assets/images/oldManRoom/album/old/GamePolaroidMehHover.png")
		else:
			get_node("Album/Old").texture_normal = load("res://assets/images/oldManRoom/album/old/GamePolaroidBad.png")
			get_node("Album/Old").texture_hover = load("res://assets/images/oldManRoom/album/old/GamePolaroidBadHover.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_BackArrow_pressed():
	pass # Replace with function body.
	get_tree().change_scene("res://scenes/mainMenu/MainMenu.tscn")


func _on_OldMan_pressed():
	pass # Replace with function body.
	


func _on_TextureButton_pressed():
	pass # Replace with function body.
	get_node("Album").visible = false


func _on_Child_pressed():
	pass # Replace with function body.
	global.instruction_controler = 0
	get_tree().change_scene("res://scenes/oldManRoom/Instructions.tscn")


func _on_CloseText_pressed():
	pass # Replace with function body.
	get_node("TextExplanation").visible = false
	get_node("TextExplanation/TextForExplanation").text = "I dont wanna think about that"


func _on_Object1_pressed():
	pass # Replace with function body.
	if global.child == 2:
		get_node("TextExplanation/TextForExplanation").text = "This is my singing trophy"
	get_node("TextExplanation").visible = true


func _on_Youth_pressed():
	global.instruction_controler = 1
	get_tree().change_scene("res://scenes/oldManRoom/Instructions.tscn")


func _on_Object3_pressed():
	pass # Replace with function body.
	if global.youth == 2:
		get_node("TextExplanation/TextForExplanation").text = "This is my old bass"
	get_node("TextExplanation").visible = true


func _on_Object2_pressed():
	pass # Replace with function body.
	if global.adult == 2:
		get_node("TextExplanation/TextForExplanation").text = "This is a photo of my wedding"
	get_node("TextExplanation").visible = true
	


func _on_Adult_pressed():
	global.instruction_controler = 2
	get_tree().change_scene("res://scenes/oldManRoom/Instructions.tscn")


func _on_Old_pressed():
	pass # Replace with function body.
	get_tree().change_scene("res://scenes/endings/good/goodEnding.tscn")


func _on_photoAlbum_pressed():
	pass # Replace with function body.
	get_node("Album").visible = true
