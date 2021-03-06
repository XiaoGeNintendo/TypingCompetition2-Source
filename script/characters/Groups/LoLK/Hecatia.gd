extends CharacterBase

class_name Hecatia

func onSkill(me,enemy, scene):
	if me.atk==3:
		me.atk=1
		me.heal=5
	elif me.atk==1:
		me.atk=5
		me.heal=1
	else:
		me.atk=3
		me.heal=3
	
func _init():
	self.maxhp=880
	self.atk=3
	self.name="Hecatia Lapislazuli"
	self.skillCost=1
	self.image="res://pic/hecatia.png"
	self.heal=3
	self.nosub=true
	self.desc="""
Skill: Welcome to hell
Switch between three modes:
	atk=3 heal=3
	atk=1 heal=5
	atk=5 heal=1
"""
