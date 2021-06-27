extends CharacterBase

class_name Eika

func onSkillA(me,sub,enemy,es,scene,isSub):
	es.skillCost+=100

func _init():
	self.maxhp=235
	self.atk=2
	self.name="Ebisu Eika"
	self.skillCost=1000
	self.image="res://pic/eika.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Stone Stacker
Increase enemy minion's cost by 100
"""
