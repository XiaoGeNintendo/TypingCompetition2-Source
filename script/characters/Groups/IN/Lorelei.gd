extends CharacterBase

class_name Lorelei

func onSkill(me,enemy, scene):
	scene.get_node("VBoxContainer/HP").changeValue(randi())

func _init():
	self.maxhp=225
	self.atk=1
	self.name="Mystia Lorelei"
	self.skillCost=0
	self.image="res://pic/lorelei.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Blidness
HP cannot be seen and displayed
"""
