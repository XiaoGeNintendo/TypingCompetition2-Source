extends CharacterBase

class_name Kanako

func onSkill(me,enemy, scene):
	me.maxhp-=200
	scene.emit_signal("damage_given",me,-me.maxhp)
	
func _init():
	self.maxhp=1000
	self.atk=2
	self.name="Yasaka Kanako"
	self.skillCost=700
	self.image="res://pic/kanako.png"
	self.heal=2
	self.desc="""
Skill: Virtue of wind god
Fully heal but reduce maxhp by 200
"""
