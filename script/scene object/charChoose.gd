extends Node2D

func _ready():
	$HBox/LeftSubview.connect("player_confirmed",self,"onConfirm")
	$HBox/RightSubview.connect("player_confirmed",self,"onConfirm")

func onConfirm():
	var left=$HBox/LeftSubview
	var right=$HBox/RightSubview
	
	if left.confirm and right.confirm:
		var root=get_node("/root/Global")
		var cc=get_node("/root/AvailableCharacters")
		root.p1=Character.new(cc.chars[left.gId].group[left.cId])
		root.p1.role=0
		root.p1.ai=left.ailvl
		root.p1.maxhp*=root.HPMul
		root.p1.hp*=root.HPMul
		
		root.p2=Character.new(cc.chars[right.gId].group[right.cId])
		root.p2.role=1
		root.p2.ai=right.ailvl
		root.p2.maxhp*=root.HPMul
		root.p2.hp*=root.HPMul
		get_tree().change_scene("res://subChoose.tscn")
