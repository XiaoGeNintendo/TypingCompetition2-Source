extends CharacterBase

class_name Misumaru

func onSkillA(me,sub,enemy,es,scene,isSub):
	me.initVar("hp",0.0)
	me.vars["hp"]+=enemy.maxhp/6000.0
	if me.vars["hp"]>=1:
		me.vars["hp"]-=1
		scene.emit_signal("damage_given",enemy,1)

func _init():
	self.maxhp=608
	self.atk=4
	self.name="Tamatsukuri Misumaru"
	self.skillCost=0
	self.skillType=1
	self.image="res://pic/misumaru.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Yinyang Suffocation
Deal 1/6000 of enemy's maximum HP of damage every frame.
"""
