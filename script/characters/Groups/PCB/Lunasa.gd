extends CharacterBase

class_name Lunasa

func onSkill(me,enemy,scene):
	if randi()%2==0:
		scene.emit_signal("damage_given",me,1)
	else:
		scene.emit_signal("damage_given",enemy,1)
func _init():
	self.maxhp=500
	self.atk=1
	self.name="Lunasa Prismriver"
	self.skillCost=0
	self.image="res://pic/lunasa.png"
	self.heal=3
	self.skillType=1
	self.desc="""
[Passive] Skill: Music I
Each frame damage 1 HP from randomly yourself or enemy
"""
