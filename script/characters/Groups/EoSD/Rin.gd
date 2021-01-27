extends CharacterBase

class_name Rin

func onSkill(me,enemy,scene):
	enemy.base.onSkill(me,enemy,scene)
	
func _init():
	self.maxhp=5500
	self.atk=22
	self.name="Satsuki Rin"
	self.skillCost=50
	self.image="res://pic/rin.png"
	self.heal=15
	self.desc="""
Skill: Natural Possession
Use enemy's skill but with low cost.
*For entertainment only
"""
