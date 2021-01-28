extends CharacterBase

class_name Suwako

func onSkill(me,enemy, scene):
	me.maxhp*=2
	scene.emit_signal("damage_given",me,max(100,me.hp/2))
	
func _init():
	self.maxhp=300
	self.atk=2
	self.name="Moriya Suwako"
	self.skillCost=700
	self.image="res://pic/suwako.png"
	self.heal=4
	self.desc="""
Skill: Mo Sama
Lose half of own HP(at least 100)
Double maxhp
"""
