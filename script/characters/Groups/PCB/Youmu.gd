extends CharacterBase

class_name Youmu

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,enemy.hp/2)
	me.skillCost+=100
func _init():
	self.maxhp=700
	self.atk=4
	self.name="Konpaku Youmu"
	self.skillCost=900
	self.image="res://pic/youmu.png"
	self.heal=2
	self.desc="""
Skill: Strike of hyperdeath
The enemy loses 1/2 of his current health
Increase skill cost by 100
"""
