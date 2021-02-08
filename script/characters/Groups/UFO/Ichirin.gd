extends CharacterBase

class_name Ichirin

func onSkill(me,enemy,scene):
	var realGauge=me.skillGauge+me.skillCost
	me.skillGauge=0
	if realGauge>=1000:
		scene.emit_signal("damage_given",enemy,realGauge/5)
	else:
		scene.emit_signal("damage_given",enemy,realGauge/8)

func _init():
	self.maxhp=777
	self.atk=4
	self.name="Kumoi Ichirin"
	self.skillCost=1
	self.image="res://pic/ichirin.png"
	self.heal=1
	self.desc="""
Skill: Unzan attack!!!
(if gauge<=1000)Deal [skillgauge]/8 damage to enemy
(otherwise)Deal [skillGauge]/5 damage to enemy
"""
