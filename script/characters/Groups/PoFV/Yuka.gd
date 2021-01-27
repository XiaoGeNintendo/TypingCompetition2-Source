extends CharacterBase

class_name Yuka

func onSkill(me,enemy,scene):
	if randi()%10<9:
		scene.emit_signal("damage_given",enemy,100)
	else:
		scene.emit_signal("damage_given",me,200)
	
func _init():
	self.maxhp=525
	self.atk=4
	self.name="Kazami Yuka"
	self.skillCost=1200
	self.image="res://pic/yuka.png"
	self.heal=1
	self.desc="""
Skill: Flower Spark
90% to deal 100 damage to enemy
10% to deal 200 to yourself
"""
