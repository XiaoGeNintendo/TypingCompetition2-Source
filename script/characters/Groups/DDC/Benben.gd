extends CharacterBase

class_name Benben

func onSkill(me,enemy,scene):
	if 6<=OS.get_time().hour and OS.get_time().hour<=18:
		me.atk=4
	else:
		me.heal=4
func _init():
	self.maxhp=500
	self.atk=2
	self.name="Tsukumo Benben"
	self.skillCost=0
	self.image="res://pic/benben.png"
	self.heal=2
	self.skillType=1
	self.desc="""
[Passive]Skill: School Ring
When system time is at 6:00-18:59, attack will be 4
otherwise, heal will be 4
"""
