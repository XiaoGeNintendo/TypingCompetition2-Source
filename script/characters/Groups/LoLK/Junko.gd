extends CharacterBase

class_name Junko

func onSkill(me,enemy, scene):
	if enemy.hp>=me.hp:
		me.atk=4
	else:
		me.atk=2
	
func _init():
	self.maxhp=996
	self.atk=2
	self.name="Junko"
	self.skillCost=0
	self.image="res://pic/junko.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Fury of me
Damage doubles when enemy's HP is higher
"""
