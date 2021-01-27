extends CharacterBase

class_name Rumia

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,10)
	scene.emit_signal("damage_given",me,-20)
	
func _init():
	self.maxhp=440
	self.atk=2
	self.name="Rumia"
	self.skillCost=250
	self.image="res://pic/rumia.png"
	self.heal=2
	self.desc="""
Skill: Bloody-Thirsty Youkai
Drain 10 hp from enemy
recover 20 hp
"""
