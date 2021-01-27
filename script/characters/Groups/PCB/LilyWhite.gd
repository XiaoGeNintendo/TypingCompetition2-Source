extends CharacterBase

class_name LilyWhite

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",me,-60)
	scene.emit_signal("damage_given",enemy,-30)
	
func _init():
	self.maxhp=480
	self.atk=1
	self.name="Lily White"
	self.skillCost=555
	self.image="res://pic/lilywhite.png"
	self.heal=3
	self.desc="""
Skill: Angel Recover
Recover 60 HP
Recover enemy 30 HP too
"""
