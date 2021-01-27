extends CharacterBase

class_name Komachi

func onSkill(me,enemy,scene):
	# print(enemy.hp," ",enemy.maxhp,enemy.hp<=enemy.maxhp*0.2)
	if enemy.hp<=enemy.maxhp*0.2:
		me.atk=10
	else:
		me.atk=3
	if me.hp<=me.maxhp*0.2:
		me.heal=5
	else:
		me.heal=1
	
func _init():
	self.maxhp=495
	self.atk=3
	self.name="Onozuka Komachi"
	self.skillCost=0
	self.image="res://pic/komachi.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Death Call
When self is in DANGER(HP<=20%), heal increase to 5
When enemy is in DANGER, attack increase to 10
"""
