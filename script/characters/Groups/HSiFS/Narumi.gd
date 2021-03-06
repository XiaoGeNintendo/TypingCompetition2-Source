extends CharacterBase

class_name Narumi

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,400)
	
func _init():
	self.maxhp=520
	self.atk=1
	self.name="Yatadera Narumi"
	self.skillCost=2000
	self.image="res://pic/narumi.png"
	self.heal=2
	self.desc="""
Skill: Buddhist Bomb
Deal 400 damage
"""
