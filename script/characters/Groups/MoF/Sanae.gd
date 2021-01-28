extends CharacterBase

class_name Sanae

func onSkill(me,enemy, scene):
	var x=randi()%6
	if x==0:
		scene.emit_signal("damage_given",me,-10000)
	elif x==1:
		scene.emit_signal("damage_given",me,me.hp-1)
	elif x<=3:
		scene.emit_signal("damage_given",me,-50)
	else:
		scene.emit_signal("damage_given",me,30)
	
func _init():
	self.maxhp=900
	self.atk=2
	self.name="Kochiya Sanae"
	self.skillCost=800
	self.image="res://pic/sanae.png"
	self.heal=4
	self.desc="""
Skill: Miracle Roll a Dice
Randomly choose an effect from:
Fully heal yourself (1/6)
Damage yourself to 1 HP (1/6)
Heal by 50 HP (2/6)
Damage by 30 HP (2/6)
"""
