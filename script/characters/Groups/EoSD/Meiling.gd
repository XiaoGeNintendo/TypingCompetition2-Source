extends CharacterBase

class_name Meiling

func onSkill(me,enemy,scene):
	scene.emit_signal("damage_given",enemy,50)
	enemy.status.append(GDBuff.new("Bleeding",600,1,5))
	
func _init():
	self.maxhp=500
	self.atk=4
	self.name="Hong Meiling"
	self.skillCost=1000
	self.image="res://pic/meiling.png"
	self.heal=0
	self.desc="""
Skill: Dragon Kick
Deal 50 damage to the enemy
Cast [Bleeding] effect to the enemy for 600 frames
which deals 1 damage every 5 frame
"""
