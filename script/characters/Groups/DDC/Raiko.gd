extends CharacterBase

class_name Raiko

func onSkill(me,enemy,scene):
	me.initVar("last",0)
	var now=OS.get_system_time_msecs()
	var delta=(now-me.vars["last"])%500
	print(now," last=",me.vars["last"]," delta=",delta)
	if delta<=100:
		scene.emit_signal("damage_given",enemy,60)
	else:
		scene.emit_signal("damage_given",enemy,20)
	me.vars["last"]=now
func _init():
	self.maxhp=728
	self.atk=3
	self.name="Hirikawa Raiko"
	self.skillCost=200
	self.image="res://pic/raiko.png"
	self.heal=1
	self.desc="""
Skill: Beat master
When used at exactly a beat (120BPM) after last use,
deal 60 damage
deal 20 otherwise
"""
