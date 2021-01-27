extends CharacterBase

class_name Lyrica

func onSkill(me,enemy,scene):
	if randi()%10000==0:
		scene.emit_signal("damage_given",enemy,100000)
func _init():
	self.maxhp=500
	self.atk=3
	self.name="Lyrica Prismriver"
	self.skillCost=0
	self.image="res://pic/lyrica.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Music III
Each frame 0.01% to instant win
"""
