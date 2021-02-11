extends CharacterBase

class_name Kyouko

func onSkill(me,enemy,scene):
	if me.checkAction("attack"):
		scene.emit_signal("damage_given",me,-me.heal)
	if me.checkAction("heal"):
		scene.emit_signal("damage_given",enemy,me.atk)
func _init():
	self.maxhp=477
	self.atk=2
	self.name="Kasodani Kyouko"
	self.skillCost=0
	self.image="res://pic/kyouko.png"
	self.heal=2
	self.skillType=1
	self.desc="""
[Passive] Skill: Boundary Echo
When attacking, automatically heal
vice versa
"""
