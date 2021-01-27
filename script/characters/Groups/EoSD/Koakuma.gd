extends CharacterBase

class_name Koakuma

func onSkill(me,enemy,scene):
	if enemy.skillGauge>=me.skillGauge+me.skillCost:
		scene.emit_signal("damage_given",enemy,60)
	else:
		scene.emit_signal("damage_given",enemy,30)
	
func _init():
	self.maxhp=499
	self.atk=1
	self.name="Koakuma"
	self.skillCost=350
	self.image="res://pic/koakuma.png"
	self.heal=1
	self.desc="""
Skill: Devil's Horn
if enemy's character skill gauge is greater than own
Deal 60 damage
else deal 30
"""
