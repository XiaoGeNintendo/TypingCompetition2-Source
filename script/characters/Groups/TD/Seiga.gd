extends CharacterBase

class_name Seiga

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",me,-1000)
	
func _init():
	self.maxhp=666
	self.atk=1
	self.name="Kauku Seiga"
	self.skillCost=1600
	self.image="res://pic/seiga.png"
	self.heal=1
	self.desc="""
Skill: Summon Zombie
Fully heal
"""
