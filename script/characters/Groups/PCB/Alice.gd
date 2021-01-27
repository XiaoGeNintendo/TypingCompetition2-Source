extends CharacterBase

class_name Alice

func onSkill(me,enemy,scene):
	if me.skillGauge>=me.skillCost:
		enemy.status.append(GDBuff.new("Doll II",900,2,10))
		me.status.append(GDBuff.new("Doll II",900,-2,10))
		me.skillGauge-=me.skillCost
	else:
		enemy.status.append(GDBuff.new("Doll",600,1,10))
		me.status.append(GDBuff.new("Doll",600,-1,10))

func _init():
	self.maxhp=515
	self.atk=0
	self.name="Alice Margatroid"
	self.skillCost=430
	self.image="res://pic/alice.png"
	self.heal=3
	self.desc="""
If current skill gauge is greater than double the skill cost:
	Give [Doll II] effect to enemy for 900 frames
	which deals 2 damage per 10 frames
	Give [Doll II] effect to you for 900 frames
	which heals 2 HP per 10 frames
else:
	Give [Doll] effect to enemy for 600 frames
	which deals 1 damage per 10 frames
	Give [Doll] effect to you for 600 frames
	which heals 1 HP per 10 frames
"""
