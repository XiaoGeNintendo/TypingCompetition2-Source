extends CharacterBase

class_name Nightbug

func onSkill(me,enemy, scene):
	enemy.status.append(GDRBuff.new("Bug",60,1,3,1))
func _init():
	self.maxhp=95
	self.atk=0
	self.name="Wriggle Nightbug"
	self.skillCost=150
	self.image="res://pic/nightbug.png"
	self.heal=0
	self.desc="""
Skill: Stupid bugs
Give [Bug] effect for 60 frames
deal 1-3 damage randomly per frame
"""
