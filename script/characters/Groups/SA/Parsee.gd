extends CharacterBase

class_name Parsee

func onSkill(me,enemy,scene):
	var tmp=me.hp
	scene.emit_signal("damage_given",me,me.hp-enemy.hp)
	scene.emit_signal("damage_given",enemy,enemy.hp-tmp)
	
func _init():
	self.maxhp=520
	self.atk=2
	self.name="Mizuhashi Parsee"
	self.skillCost=850
	self.image="res://pic/parsee.png"
	self.heal=1
	self.desc="""
Skill: Envy Control
Swap HP
"""
