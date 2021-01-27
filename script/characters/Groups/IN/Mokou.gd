extends CharacterBase

class_name Mokou

func onSkill(me,enemy, scene):
	if not "frame" in me.vars:
		me.vars["frame"]=0
	me.vars["frame"]+=1
	if me.vars["frame"]%1==0:
		me.maxhp-=1
		scene.emit_signal("damage_given",me,1)
	if me.vars["frame"]%180==0:
		me.atk+=1

func _init():
	self.maxhp=1000
	self.atk=5
	self.name="Huziwara no Mokou"
	self.skillCost=0
	self.image="res://pic/mokou.png"
	self.heal=5
	self.skillType=1
	self.desc="""
[Passive] Skill: Reach for the moon
Lose maxhp by 1 every 1 frame
Increase attack by 1 every 180 frames
"""
