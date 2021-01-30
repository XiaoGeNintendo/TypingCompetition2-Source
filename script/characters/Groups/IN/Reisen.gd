extends CharacterBase

class_name Reisen

func onSkill(me,enemy, scene):
	if not "RSframe" in me.vars:
		me.vars["RSframe"]=0
	me.vars["RSframe"]+=1
	if me.vars["RSframe"]%5==0:
		enemy.atk=-abs(enemy.atk)
		enemy.heal=-abs(enemy.heal)
	else:
		enemy.atk=abs(enemy.atk)
		enemy.heal=abs(enemy.heal)
func _init():
	self.maxhp=777
	self.atk=3
	self.name="Reisen Udongein Inaba"
	self.skillCost=0
	self.image="res://pic/reisen.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Lunatic Reverse
Sometimes enemy's heal will be damaging herself
Sometimes enemy's attack will heal you
"""
