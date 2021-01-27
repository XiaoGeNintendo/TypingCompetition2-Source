extends CharacterBase

class_name Marisa

func onSkill(me,enemy, scene):
	scene.emit_signal("damage_given",enemy,120)
	scene.emit_signal("damage_given",me,40)
	
func _init():
	self.maxhp=480
	self.atk=3
	self.name="Kirisame Marisa"
	self.skillCost=950
	self.image="res://pic/marisa.png"
	self.heal=1
	self.desc="""
Skill: Master Spark
Deal 120 damage
but deal 40 damage to yourself too
"""
