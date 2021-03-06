extends CharacterBase

class_name Satono

func onSkillA(me,sub,enemy,es,scene,isSub):
	if not isSub or me.base.name!="Matara Okina":
		scene.emit_signal("damage_given",enemy,60)
	else:
		enemy.status.append(GDBuff.new("Crazy!!",180,1,1))
		
	
func _init():
	self.maxhp=520
	self.atk=1
	self.name="Nishida Satono"
	self.skillCost=1000
	self.image="res://pic/satono.png"
	self.heal=2
	self.version=1
	self.desc="""
Skill: Crazy Dancer A
When used as sub and master is [Matara Okina]
Deal 1 damage each frame for 3 second
otherwise deal 60 damage
"""
