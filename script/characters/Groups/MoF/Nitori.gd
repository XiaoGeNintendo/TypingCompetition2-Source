extends CharacterBase

class_name Nitori

func onSkill(me,enemy, scene):
	me.status.append(NitoriBuff.new())
	
func _init():
	self.maxhp=800
	self.atk=3
	self.name="Kawasiro Nitori"
	self.skillCost=1300
	self.image="res://pic/nitori.png"
	self.heal=1
	self.desc="""
Skill: Super Kappa Machine
Temporarily increase HP and MaxHP by 2000
Increase Attack to 5, Heal to 5
For 15 seconds
"""
