extends CharacterBase

class_name Takane

func onSkillA(me,sub,enemy,es,scene,isSub):
	me.status.append(GDBuff.new("Wood",300,-me.maxhp/10,60))

func _init():
	self.maxhp=613
	self.atk=2
	self.name="Yamashiro Takane"
	self.skillCost=897
	self.image="res://pic/takane.png"
	self.heal=2
	self.version=1
	self.desc="""
Skill: Hidden in the wood
Recover 1/10 of your current maxhp once per second for 5 seconds.
"""
