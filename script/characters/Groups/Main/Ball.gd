extends CharacterBase

class_name Ball

func onSkill(me,enemy, scene):
	pass
	
func _init():
	self.maxhp=500
	self.atk=2
	self.name="Kedama"
	self.skillCost=1000
	self.image="res://pic/ball.png"
	self.heal=1
	self.desc="""
Skill: Spell Cancel
Shows a cool animation
Does not do anything else useful :)
"""
