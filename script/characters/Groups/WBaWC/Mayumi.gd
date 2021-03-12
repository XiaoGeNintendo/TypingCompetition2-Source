extends CharacterBase

class_name Mayumi

func onSkillA(me,sub,enemy,es,scene,isSub):
	enemy.status.append(GDRBuff.new("Haniwa",60*30,100,200,600))

func _init():
	self.maxhp=625
	self.atk=3
	self.name="Joutougu Mayumi"
	self.skillCost=2000
	self.image="res://pic/mayumi.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Haniwa Army
Deal 100-200 damage every 10 seconds for 3 times
"""
