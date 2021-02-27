extends CharacterBase

class_name Seiran

func onSkill(me,enemy, scene):
	me.initVar("dmg",10)
	scene.emit_signal("damage_given",enemy,me.vars["dmg"])
	me.vars["dmg"]+=2
func _init():
	self.maxhp=500
	self.atk=2
	self.name="Seiran"
	self.skillCost=100
	self.image="res://pic/seiran.png"
	self.heal=1
	self.desc="""
Skill: Triangle Lunatic Shoot
Deal 10 damage for the first time
Deal extra 2 damage for every next use
"""
