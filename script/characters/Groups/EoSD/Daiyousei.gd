extends CharacterBase

class_name Daiyousei

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",me,-60)
	
func _init():
	self.maxhp=499
	self.atk=1
	self.name="Daiyousei"
	self.skillCost=350
	self.image="res://pic/daiyousei.png"
	self.heal=1
	self.desc="""
Skill: Spring Haze
Heal by 60
"""
