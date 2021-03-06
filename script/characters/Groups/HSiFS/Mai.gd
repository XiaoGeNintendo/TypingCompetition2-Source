extends CharacterBase

class_name Mai

func onSkillA(me,sub,enemy,es,scene,isSub):
	if not isSub or me.base.name!="Matara Okina":
		scene.emit_signal("damage_given",me,-60)
	else:
		me.status.append(GDBuff.new("Crazy!!",180,-1,1))
func _init():
	self.maxhp=520
	self.atk=1
	self.name="Teireida Mai"
	self.skillCost=1000
	self.image="res://pic/mai.png"
	self.heal=2
	self.version=1
	self.desc="""
Skill: Crazy Dancer A
When used as sub and master is [Matara Okina]
Heal 1 each frame for 3 second
otherwise Heal 60
"""
