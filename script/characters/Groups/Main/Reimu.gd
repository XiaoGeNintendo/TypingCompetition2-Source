extends CharacterBase

class_name Reimu

func onSkill(me,enemy, scene):
	scene.emit_signal("damage_given",enemy,60)
	
func _init():
	self.maxhp=600
	self.atk=2
	self.name="Hakurei Reimu"
	self.skillCost=510
	self.image="res://pic/reimu.png"
	self.heal=1
	self.desc="""
Skill: Homing Needle
The most basic skill to deal 60 damage.
"""
