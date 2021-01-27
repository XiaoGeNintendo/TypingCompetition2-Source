extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/Left.connect("damage_given",$HBoxContainer/Right,"dealDmg")
	$HBoxContainer/Left.connect("damage_given",self,"dealDmg")
	$HBoxContainer/Right.connect("damage_given",self,"dealDmg")
	$HBoxContainer/Right.connect("damage_given",$HBoxContainer/Left,"dealDmg")
	$HBoxContainer/Left.connect("skill_used",self,"skill")
	$HBoxContainer/Right.connect("skill_used",self,"skill")

var cast=load("res://SkillCast.tscn")
func skill(user):
	var ins=cast.instance()
	ins.texture=load(user.base.image)
	ins.flip=user==Global.p2
	add_child(ins)
func dealDmg(user, amount):
	if user.hp-amount<=0:
		get_tree().change_scene("res://endScene.tscn")
