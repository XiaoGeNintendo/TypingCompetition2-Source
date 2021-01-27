extends CharacterBase

class_name ExRumia

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,1000)
	
func _init():
	self.maxhp=9999
	self.atk=100
	self.name="ExRumia"
	self.skillCost=2000
	self.image="res://pic/exrumia.png"
	self.heal=85
	self.desc="""
Skill: Power of darkness
Deal 1000 damage to the enemy
*For entertainment only
"""
