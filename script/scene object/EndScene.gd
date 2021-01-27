extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var global=get_node("/root/Global")
	if global.p1.hp>0:
		$Label.text%="p1"
	else:
		$Label.text%="p2"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://start.tscn")
