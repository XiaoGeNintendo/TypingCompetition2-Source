extends CharacterBase

class_name Keine

func onSkill(me,enemy, scene):
	if not "saved" in me.vars:
		me.vars["saved"]=0
	if not "cost" in me.vars:
		me.vars["cost"]=250
	if me.vars["saved"]==0:
		me.vars["saved"]=me.hp
		me.skillCost=me.vars["cost"]
		scene.get_node("VBoxContainer/TextureRect").texture=preload("res://pic/keine2.png")
	else:
		scene.emit_signal("damage_given",me,me.hp-me.vars["saved"])
		me.skillCost=1
		me.vars["saved"]=0
		me.vars["cost"]+=250
		scene.get_node("VBoxContainer/TextureRect").texture=preload("res://pic/keine.png")
func _init():
	self.maxhp=750
	self.atk=3
	self.name="Kamishirasawa Keine"
	self.skillCost=1
	self.image="res://pic/keine.png"
	self.heal=3
	self.nosub=true
	self.desc="""
Skill: History Eater
When used for the first time, save current HP (cost 1 gauge only)
When used the skill for another time, set HP to be the saved one
Increase cost by 250
"""
