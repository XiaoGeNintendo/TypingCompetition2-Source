extends CharacterBase

class_name Kisume

func onSkill(me,enemy,scene):
	if randi()%10<=4:
		scene.emit_signal("damage_given",enemy,5)
	else:
		scene.emit_signal("damage_given",enemy,2)
	
func _init():
	self.maxhp=220
	self.atk=2
	self.name="Kisume"
	self.skillCost=8
	self.image="res://pic/kisume.png"
	self.heal=1
	self.desc="""
Skill: Explosion Underground
40% to deal 5 damage to enemy
60% to deal 2 damage to enemy
"""
