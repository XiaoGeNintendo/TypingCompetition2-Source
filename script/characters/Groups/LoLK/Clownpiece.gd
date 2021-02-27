extends CharacterBase

class_name Clownpiece

func onSkill(me,enemy, scene):
	enemy.status.append(GDRBuff.new("Laser Hell",100000,1,10,60))
	
func _init():
	self.maxhp=443
	self.atk=2
	self.name="Clownpiece"
	self.skillCost=1000
	self.image="res://pic/clownpiece.png"
	self.heal=1
	self.desc="""
Skill: Laser Hell
Deal 1 to 10 damage every second for infinity
"""
