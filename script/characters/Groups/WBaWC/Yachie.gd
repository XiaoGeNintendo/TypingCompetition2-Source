extends CharacterBase

class_name Yachie

func onSkillA(me,sub,enemy,es,scene,isSub):
	sub.skillGauge+=es.skillGauge
	es.skillGauge=0

func _init():
	self.maxhp=883
	self.atk=4
	self.name="Kitcho Yachie"
	self.skillCost=0
	self.image="res://pic/yachie.png"
	self.heal=1
	self.version=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Mind control
Control enemy's minion 
so that all minion gauge will be absorbed by own minion
"""
