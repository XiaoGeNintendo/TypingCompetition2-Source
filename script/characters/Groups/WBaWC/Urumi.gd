extends CharacterBase

class_name Urumi

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,len(enemy.base.name)*17)

func _init():
	self.maxhp=680
	self.atk=3
	self.name="Ushizaki Urumi"
	self.skillCost=1250
	self.image="res://pic/urumi.png"
	self.heal=0
	self.desc="""
Skill: Heavy Stone Baby
Deal damage.
Longer the enemy's name, bigger the damage
"""
