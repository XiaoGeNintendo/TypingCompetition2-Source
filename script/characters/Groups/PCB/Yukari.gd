extends CharacterBase

class_name Yukari

func onSkill(me,enemy,scene):
	enemy.atk=0
	enemy.skillCost=1500
func _init():
	self.maxhp=700
	self.atk=4
	self.name="Yakumo Yukari"
	self.skillCost=1500
	self.image="res://pic/yukari.png"
	self.heal=2
	self.desc="""
Skill: Life of narrow void
Increase opponent's skill cost to 1500
lower enemy attack to 0
"""
