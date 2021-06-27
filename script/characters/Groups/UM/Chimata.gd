extends CharacterBase

class_name Chimata

func onSkillA(me,sub,enemy,es,scene,isSub):
	if randi()%20==0:
		sub.skillGauge=max(sub.skillGauge-1,0)
	elif randi()%10==0:
		es.skillGauge=max(es.skillGauge-1,0)
	

func _init():
	self.maxhp=1000
	self.atk=3
	self.name="Tenkyu Chimata"
	self.skillCost=0
	self.skillType=1
	self.image="res://pic/chimata.png"
	self.heal=3
	self.version=1
	self.desc="""
Skill: An Offering to the Ownerless
Randomly reduce own and enemy's minion gauge
"""
