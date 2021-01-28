extends CharacterBase

class_name Aki2

func onSkill(me,enemy, scene):
	enemy.status.append(AkiBuff.new())
	
func _init():
	self.maxhp=480
	self.atk=1
	self.name="Aki Minoriko"
	self.skillCost=1470
	self.image="res://pic/aki2.png"
	self.heal=3
	self.desc="""
Skill: Leaf of Autumn B
Inflict [Leaf of Autumn B] for 6000 frames
Deal 1-3 damage every 60 frame
In each frame 1/4000 chance to inflict [Leaf of Autumn A]
"""
