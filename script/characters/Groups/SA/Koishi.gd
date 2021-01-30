extends CharacterBase

class_name Koishi

func onSkill(me,enemy,scene):
	me.initVar("check",0)
	me.vars["check"]+=1
	if me.vars["check"]%12==0:
		if not enemy.checkAction("defense"):
			scene.emit_signal("damage_given",me,-enemy.heal)
		if not enemy.checkAction("attack"):
				scene.emit_signal("damage_given",enemy,enemy.atk)

func _init():
	self.maxhp=514
	self.atk=0
	self.name="Komeiji Koishi"
	self.skillCost=0
	self.image="res://pic/koishi.png"
	self.heal=0
	self.skillType=1
	self.desc="""
[Passive] Skill: Unconsciousness Control
When enemy is not healing, she will heal you
When enemy is not attacking, she will attack herself
Detect 5 times per second
"""
