extends CharacterBase

class_name Keiki

func onSkillA(me,sub,enemy,es,scene,isSub):
	if isSub:
		me.skillCost=max(int(sub.skillCost/2),1)
	else:
		sub.skillCost=max(int(sub.skillCost/2),1)

func _init():
	self.maxhp=501
	self.atk=1
	self.name="Haniyasushin Keiki"
	self.skillCost=2000
	self.image="res://pic/keiki.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Idolize World
When as master
Lowers minion cost by half (minimum 1)
When as minion
Lowers master cost by half (minimum 1)
"""
