extends CharacterBase

class_name Rin

func onSkillA(a,b,c,d,e,f):
	if c.base.name=="Satsuki Rin": # @Zzzyt
		return
	c.base.skillB(a,b,c,d,e,f)
	
func _init():
	self.maxhp=5500
	self.atk=22
	self.name="Satsuki Rin"
	self.skillCost=50
	self.image="res://pic/rin.png"
	self.heal=15
	self.version=1
	self.desc="""
Skill: Natural Possession
Use enemy's skill but with low cost.
*For entertainment only
"""
