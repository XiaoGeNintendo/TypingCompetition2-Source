extends CharacterBase

class_name Doremy

func onSkill(me,enemy, scene):
	me.initVar("state",0)
	me.initVar("hp",0)
	if me.vars["state"]==0:
		me.vars["hp"]=enemy.hp
		me.vars["state"]=1
	else:
		if enemy.hp>me.vars["hp"]:
			scene.emit_signal("damage_given",enemy,250)
		else:
			scene.emit_signal("damage_given",enemy,50)
		me.vars["state"]=0
		
func _init():
	self.maxhp=600
	self.atk=2
	self.name="Doremy Sweet"
	self.skillCost=500
	self.image="res://pic/doremy.png"
	self.heal=1
	self.desc="""
Skill: Dream Eater
When used for the first time, record enemy's health
When used for the second time, 
if enemy's health is greater than recorded, deal 250 damage
otherwise deal 50 damage
Skill resets after the second use
"""
