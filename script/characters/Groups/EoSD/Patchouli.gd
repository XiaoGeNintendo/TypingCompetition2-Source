extends CharacterBase

class_name Patchouli

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",me,50)
	enemy.status.append(GDBuff.new("Curse",1200,5,60))
	me.status.append(GDBuff.new("Drain",1200,-5,60))
	
func _init():
	self.maxhp=250
	self.atk=1
	self.name="Knowledge Patchouli"
	self.skillCost=600
	self.image="res://pic/patchouli.png"
	self.heal=4
	self.desc="""
Skill: Forbidden Spell
Deal 50 damage to yourself
Cast [Curse] to enemy for 1200 frame
which deals 5 damage every 60 frame
Cast [Drain] to yourself for 1200 frame
which heals 5 HP every 60 frame
"""
