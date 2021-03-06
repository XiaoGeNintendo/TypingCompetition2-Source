extends Node2D

func _ready():
	$HBox/LeftSubview.connect("player_confirmed",self,"onConfirm")
	$HBox/RightSubview.connect("player_confirmed",self,"onConfirm")
	print("Hello")

func onConfirm():
	var left=$HBox/LeftSubview
	var right=$HBox/RightSubview
	
	if left.confirm and right.confirm:
		var root=get_node("/root/Global")
		var cc=get_node("/root/AvailableCharacters")
		root.s1=Character.new(cc.chars[left.gId].group[left.cId])
		root.s1.role=0
		root.s1.ai=left.ailvl
		root.s2=Character.new(cc.chars[right.gId].group[right.cId])
		root.s2.role=1
		root.s2.ai=right.ailvl
		get_tree().change_scene("res://Game.tscn")
