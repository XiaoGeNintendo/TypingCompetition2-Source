extends CharacterBase

class_name Flandre

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,200)
	me.atk=0
	me.skillCost=2000
	
	
func _init():
	self.maxhp=550
	self.atk=5
	self.name="Scarlet Flandre"
	self.skillCost=100
	self.image="res://pic/flandore.png"
	self.heal=0
	self.desc="""
Skill: And there was none
Deal 200 HP to the enemy
Make own skill cost 2000
Make self attack 0
"""
