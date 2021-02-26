extends CharacterBase

class_name Wakasagihime

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,randi()%90+10)
	pass
	
func _init():
	self.maxhp=233
	self.atk=1
	self.name="Wakasagihime"
	self.skillCost=225
	self.image="res://pic/wakasagi.png"
	self.heal=1
	self.desc="""
Skill: Tail Slap
Deal 10-100 damage randomly
"""
