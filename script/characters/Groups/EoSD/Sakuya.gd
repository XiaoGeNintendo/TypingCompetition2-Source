extends CharacterBase

class_name Sakuya

func onSkill(me,enemy,scene):
	enemy.status.append(TimestopBuff.new())
	me.skillCost+=100
	
func _init():
	self.maxhp=560
	self.atk=3
	self.name="Izayoi Sakuya"
	self.skillCost=1000
	self.image="res://pic/sakuya.png"
	self.heal=2
	self.desc="""
Skill: The World
Cast [Timestop] effect on enemy for 300 frames
which will clear her skill gauge
Increase own skill cost by 100
"""
