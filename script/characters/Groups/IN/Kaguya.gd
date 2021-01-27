extends CharacterBase

class_name Kaguya

func onSkill(me,enemy, scene):
	me.maxhp-=150
	scene.emit_signal("damage_given",me,150)
	me.atk+=1

func _init():
	self.maxhp=1000
	self.atk=0
	self.name="Houraisan Kaguya"
	self.skillCost=1
	self.image="res://pic/kaguya.png"
	self.heal=5
	self.desc="""
Skill: Immortal Princess
Lower max health by 150
Increase attack by 1
"""
