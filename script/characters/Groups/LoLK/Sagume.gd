extends CharacterBase

class_name Sagume

func onSkill(me,enemy, scene):
	var x=scene.Global.incMana
	scene.Global.incMana=scene.Global.decMana
	scene.Global.decMana=x
	
func _init():
	self.maxhp=700
	self.atk=2
	self.name="Kisin Sagume"
	self.skillCost=1
	self.image="res://pic/sagume.png"
	self.heal=1
	self.desc="""
Skill: Not to believe
swap skill gauge increase speed and decrease speed
"""
