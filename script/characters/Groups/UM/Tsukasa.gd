extends CharacterBase

class_name Tsukasa

func onSkillA(me,sub,enemy,es,scene,isSub):
	if me.checkAction("attack"):
		scene.emit_signal("damage_given",me,-me.atk/2)

func _init():
	self.maxhp=565
	self.atk=5
	self.name="Kudamaki Tsukasa"
	self.skillCost=0
	self.skillType=1
	self.image="res://pic/tsukasa.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Soul Drain
Heal when damaging
"""
