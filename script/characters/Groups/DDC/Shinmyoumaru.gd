extends CharacterBase

class_name Shinmyoumaru

func onSkill(me,enemy,scene):
	me.maxhp+=2
	scene.emit_signal("damage_given",me,-2)
func _init():
	self.maxhp=7
	self.atk=2
	self.name="Sukuna Shinmyoumaru"
	self.skillCost=1
	self.image="res://pic/shinmyoumaru.png"
	self.heal=1
	self.desc="""
Skill: 7 tiny man
Increase maxhp by 2
"""
