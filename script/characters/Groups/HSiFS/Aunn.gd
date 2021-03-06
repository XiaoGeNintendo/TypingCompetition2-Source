extends CharacterBase

class_name Aunn
#
#func onSkill(me,enemy,scene):
#	enemy.status.append(GDRBuff.new("Wildness",60,10,50,randi()%29+1))
#	pass

func onSkillA(me,sub,enemy,es,scene,isSub):
	if not isSub or me.base.name!="Hakurei Reimu":
		scene.emit_signal("damage_given",enemy,30)
	else:
		scene.emit_signal("damage_given",enemy,60)
func _init():
	self.maxhp=780
	self.atk=3
	self.name="Komano Aunn"
	self.skillCost=250
	self.image="res://pic/aunn.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Shrine Protector
Deal 60 damage when used as sub and master is [Hakurei Reimu]
otherwise deal 30
"""
