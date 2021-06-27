extends CharacterBase

class_name Momoyo

func onSkillA(me,sub,enemy,es,scene,isSub):
	scene.emit_signal("damage_given",enemy,hash(enemy.base.name)%500)

func _init():
	self.maxhp=1000
	self.atk=3
	self.name="Himemushi Momoyo"
	self.skillCost=729
	self.image="res://pic/momoyo.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Dragon King Slayer
Deal damage according to enemy's dragonness
Dragonness is predefined for each character
"""
