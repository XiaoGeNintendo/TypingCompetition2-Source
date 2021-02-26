extends CharacterBase

class_name Seija

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,-enemy.maxhp+2*enemy.hp)
func _init():
	self.maxhp=500
	self.atk=3
	self.name="Kijin Seija"
	self.skillCost=999
	self.image="res://pic/seija.png"
	self.heal=1
	self.desc="""
Skill: This side right
Reverse enemy HP.
That is to say, HP will be set to maxhp-HP
"""
