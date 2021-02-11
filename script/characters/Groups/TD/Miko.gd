extends CharacterBase

class_name Miko

func onSkill(me,enemy,scene):
	enemy.status.append(GDRBuff.new("Institution",17*10,1,17,10))
	me.skillCost=max(me.skillCost-10,17)
	
func _init():
	self.maxhp=860
	self.atk=2
	self.name="Toyosatomimi no Miko"
	self.skillCost=777
	self.image="res://pic/miko.png"
	self.heal=2
	self.desc="""
Skill: Desire Sky
Attack 17 times each 10 frames
Deal 1-17 damage each time
Reduce skillCost by 10 but no lower than 17
"""
