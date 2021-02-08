extends CharacterBase

class_name Murasa

func onSkill(me,enemy,scene):
	enemy.status.append(MurasaBuff.new())

func _init():
	self.maxhp=667
	self.atk=3
	self.name="Captain Murasa Minamitsu"
	self.skillCost=1550
	self.image="res://pic/murasa.png"
	self.heal=1
	self.desc="""
Skill: Phantom Ship's Eternal Anchorage
If enemy's skill gauge drop in the next 600 frames
Her gauge will be locked to 0 forever
"""
