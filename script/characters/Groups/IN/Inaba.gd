extends CharacterBase

class_name Inaba

func onSkill(me,enemy, scene):
	scene.emit_signal("damage_given",enemy,randi()%150-50)

func _init():
	self.maxhp=555
	self.atk=1
	self.name="Inaba Tewi"
	self.skillCost=200
	self.image="res://pic/inaba.png"
	self.heal=3
	self.desc="""
Skill: Lucky Rabbit Charm
Deal random -50 to 100 damage to the enemy
"""
