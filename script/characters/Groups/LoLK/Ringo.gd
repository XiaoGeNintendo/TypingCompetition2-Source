extends CharacterBase

class_name Ringo

func onSkill(me,enemy, scene):
	var ex=int(me.skillGauge/100)
	scene.emit_signal("damage_given",me,-(ex+1)*10)
	me.skillGauge=0
	
func _init():
	self.maxhp=500
	self.atk=1
	self.name="Ringo"
	self.skillCost=200
	self.image="res://pic/ringo.png"
	self.heal=2
	self.desc="""
Skill: Coffee Ringo
Cost all skill gauge
Cost 200 to recover 10 HP
Cost 100 for every extra 10 HP
eg. gauge=240 +10HP
gauge=310 +20HP
gauge=450 +30HP
"""
