extends CharacterBase

class_name Kutaka

func onSkillA(me,sub,enemy,es,scene,isSub):
	es.skillGauge=0
	sub.skillGauge=10000

func _init():
	self.maxhp=462
	self.atk=1
	self.name="Niwatari Kutaka"
	self.skillCost=1300
	self.image="res://pic/kutaka.png"
	self.heal=2
	self.nosub=true
	self.version=1
	self.desc="""
Skill: Chicken Soup
Clear enemy minion gauge
Refill own minion gauge
"""
