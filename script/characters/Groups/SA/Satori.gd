extends CharacterBase

class_name Satori

func onSkill(me,enemy,scene):
	if "init" in me.vars:
		return
	me.maxhp=enemy.maxhp*1.5
	me.atk=enemy.atk
	me.heal=enemy.heal
	scene.emit_signal("damage_given",me,-me.maxhp)
	me.vars["init"]=1
	
func _init():
	self.maxhp=1
	self.atk=0
	self.name="Komeiji Satori"
	self.skillCost=0
	self.image="res://pic/satori.png"
	self.heal=0
	self.skillType=1
	self.desc="""
[Passive] Skill: Mind reading
selfMaxHP=enemyMaxHP*1.5
selfAtk=enemyAtk
selfHeal=enemyHeal
Trigger once only
"""
