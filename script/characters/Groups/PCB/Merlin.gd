extends CharacterBase

class_name Merlin

func onSkill(me,enemy,scene):
	if randi()%1000==0:
		scene.emit_signal("damage_given",enemy,100)
	if randi()%500==0:
		scene.emit_signal("damage_given",me,50)
func _init():
	self.maxhp=500
	self.atk=2
	self.name="Merlin Prismriver"
	self.skillCost=0
	self.image="res://pic/merlin.png"
	self.heal=2
	self.skillType=1
	self.desc="""
[Passive] Skill: Music II
Each frame there's a 0.1% chance to lose 100 HP for enemy
0.2% chance to lose 50 HP for yourself
"""
