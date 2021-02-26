extends CharacterBase

class_name Sekibanki

func onSkill(me,enemy,scene):
	me.atk+=1
	pass
	
func _init():
	self.maxhp=466
	self.atk=1
	self.name="Sekibanki"
	self.skillCost=555
	self.image="res://pic/sekibanki.png"
	self.heal=1
	self.desc="""
Skill: Double Head Shooting
Increase attack by 1
"""
