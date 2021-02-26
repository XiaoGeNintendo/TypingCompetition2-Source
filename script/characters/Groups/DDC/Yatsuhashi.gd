extends CharacterBase

class_name Yatsuhashi

func onSkill(me,enemy,scene):
	me.initVar("range",7)
	me.atk=randi()%me.vars["range"]+1
	me.heal=randi()%me.vars["range"]+1
	me.vars["range"]-=1
	if me.vars["range"]==0:
		me.vars["range"]=10
func _init():
	self.maxhp=500
	self.atk=0
	self.name="Tsukumo Yatsuhashi"
	self.skillCost=200
	self.image="res://pic/yatsuhashi.png"
	self.heal=0
	self.desc="""
Skill: Confusion Ringtone
Randomize attack and heal between 1 to 7
When used again, the max range will decrease by 1
(1 to 6 for the 2nd time, 1 to 5 for the 3rd time)
When max range is 0, it will be set to 10
"""
