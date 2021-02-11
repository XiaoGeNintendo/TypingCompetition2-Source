extends CharacterBase

class_name Futo

func onSkill(me,enemy,scene):
	enemy.status.append(GDRBuff.new("Plate",600,5,50,60))
	
func _init():
	self.maxhp=555
	self.atk=3
	self.name="Mononobe no Futo"
	self.skillCost=1000
	self.image="res://pic/futo.png"
	self.heal=1
	self.desc="""
Skill: Plate Throw
Throw plate once each 60 frames,
deal 5-50 damage once
Throw 10 in total.
"""
