extends CharacterBase

class_name Syou

func onSkill(me,enemy,scene):
	me.skillCost*=2
	me.skillCost=min(me.skillCost,2000)
	if randi()%2==0:
		me.atk+=1
	else:
		me.heal+=1

func _init():
	self.maxhp=775
	self.atk=3
	self.name="Toramaru Syou"
	self.skillCost=100
	self.image="res://pic/syou.png"
	self.heal=2
	self.desc="""
Skill: Summon Nazrin
Increase attack by 1 or
Increase heal by 1
Double skill cost, but never exceed 2000
"""
