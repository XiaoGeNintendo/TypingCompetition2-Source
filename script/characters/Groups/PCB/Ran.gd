extends CharacterBase

class_name Ran

func onSkill(me,enemy,scene):
	enemy.status.append(GDBuff.new("Chen",3240,120,360))
func _init():
	self.maxhp=990
	self.atk=2
	self.name="Yakumo Ran"
	self.skillCost=880
	self.image="res://pic/ran.png"
	self.heal=2
	self.desc="""
Skill: Chen Summon
Summon Chen to deal 120 damage every 360 frames for 9 times
"""
