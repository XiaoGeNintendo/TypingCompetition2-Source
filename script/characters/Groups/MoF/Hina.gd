extends CharacterBase

class_name Hina

func onSkill(me,enemy, scene):
	enemy.status.append(HinaBuff.new())
	
func _init():
	self.maxhp=610
	self.atk=2
	self.name="Kagiyama Hina"
	self.skillCost=1200
	self.image="res://pic/hina.png"
	self.heal=2
	self.desc="""
Skill: Curse of Unbinding
Find the enemy's minimal health of the next 5 seconds
Set the health to be that minimal health after 5 seconds
"""
