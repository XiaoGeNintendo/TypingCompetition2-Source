extends CharacterBase

class_name Yuyuko

func onSkill(me,enemy,scene):
	me.status.append(YuyukoBuff.new())
func _init():
	self.maxhp=690
	self.atk=2
	self.name="Saigyouji Yuyuko"
	self.skillCost=1100
	self.image="res://pic/yuyuko.png"
	self.heal=5
	self.desc="""
Skill: Border of Life
Create a barrier which lasts 600 frames
When HP is lower than 20%, recover full hp and break the barrier.
"""
