extends CharacterBase

class_name Mike

func onSkillA(me,sub,enemy,es,scene,isSub):
	if me.hp>=me.maxhp/2:
		scene.emit_signal("damage_given",enemy,enemy.maxhp/10)
	else:
		scene.emit_signal("damage_given",me,-me.maxhp/5)

func _init():
	self.maxhp=496
	self.atk=2
	self.name="Goutokuzi Mike"
	self.skillCost=777
	self.image="res://pic/mike.png"
	self.heal=2
	self.version=1
	self.desc="""
Skill: Shoot away fortune?
When HP is above half, deal 1/10 of enemy's MaxHP worth of damage
When HP is below half, recover 1/5 of your MaxHP.
"""
