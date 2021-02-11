extends CharacterBase

class_name Yoshika

func onSkill(me,enemy,scene):
	me.initVar("dead",400)
	if me.hp<=me.vars["dead"]:
		me.vars["dead"]/=2
		scene.emit_signal("damage_given",me,-1000)
func _init():
	self.maxhp=444
	self.atk=1
	self.name="Miyako Yoshika"
	self.skillCost=0
	self.image="res://pic/yoshika.png"
	self.heal=0
	self.skillType=1
	self.desc="""
[Passive] Skill: Undead Zombie
When HP is below [400], fully heal
Threshold divides by 2 each time
"""
