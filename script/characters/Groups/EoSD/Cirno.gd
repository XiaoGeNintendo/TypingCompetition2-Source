extends CharacterBase

class_name Cirno

func onSkill(me,enemy,scene):
	enemy.status.append(GDBuff.new("Freezing",600,10,60))
	pass
	
func _init():
	self.maxhp=450
	self.atk=1
	self.name="Cirno"
	self.skillCost=500
	self.image="res://pic/cirno.png"
	self.heal=1
	self.desc="""
Skill: Perfect Freeze
Cast a [Freeze] buff on enemy for 600 frames
which loses 10 HP every 60 frame
"""
