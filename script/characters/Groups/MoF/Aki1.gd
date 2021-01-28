extends CharacterBase

class_name Aki1

func onSkill(me,enemy, scene):
	enemy.status.append(GDRBuff.new("Leaf of Autumn A",6000,1,3,60))
	
func _init():
	self.maxhp=480
	self.atk=1
	self.name="Aki Shizuha"
	self.skillCost=870
	self.image="res://pic/aki1.png"
	self.heal=3
	self.desc="""
Skill: Leaf of Autumn A
Inflict [Leaf of Autumn A] for 6000 frames
Deal 1-3 damage every 60 frame
"""
