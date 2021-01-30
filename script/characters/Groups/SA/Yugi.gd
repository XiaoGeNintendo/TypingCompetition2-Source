extends CharacterBase

class_name Yugi

func onSkill(me,enemy,scene):
	if enemy.heal>me.heal:
		me.heal+=2
	else:
		scene.emit_signal("damage_given",enemy,randi()%200+100)
	
func _init():
	self.maxhp=950
	self.atk=5
	self.name="Hoshiguma Yugi"
	self.skillCost=1250
	self.image="res://pic/yugi.png"
	self.heal=3
	self.desc="""
Skill: Storm on Mt. Ooe
If enemy heal ability is greater than own, incease heal ability by 2
Otherwise deal 100-300 damage
"""
