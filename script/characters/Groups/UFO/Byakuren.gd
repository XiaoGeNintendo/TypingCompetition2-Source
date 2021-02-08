extends CharacterBase

class_name Byakuren

func onSkill(me,enemy,scene):
	enemy.atk+=enemy.heal
	enemy.heal=0
	me.atk+=me.heal
	me.heal=0

func _init():
	self.maxhp=997
	self.atk=1
	self.name="Hiziri Byakuren"
	self.skillCost=300
	self.image="res://pic/byakuren.png"
	self.heal=4
	self.desc="""
Skill: Amagimi Hijiri's Air Scroll
Increase attack by your heal ability and clear your heal ability
same for enemy
"""
