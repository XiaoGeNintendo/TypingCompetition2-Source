extends CharacterBase

class_name Mamizou

func onSkill(me,enemy,scene):
	me.maxhp+=enemy.maxhp
	me.heal+=enemy.heal
	me.atk+=enemy.atk
	scene.emit_signal("damage_given",me,-me.maxhp)
func _init():
	self.maxhp=550
	self.atk=1
	self.name="Hutatsuiwa Mamizou"
	self.skillCost=2000
	self.image="res://pic/mamizou.png"
	self.heal=1
	self.desc="""
Skill: Completely Copy
Increase own maxhp by enemy's maxhp
Increase own atk by enemy's atk
Incrase own heal ability by enemy's heal ability
Fully heal
"""
