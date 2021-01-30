extends CharacterBase

class_name Rin2

func onSkill(me,enemy,scene):
	while true:
		var dmg=randi()%50+50
		scene.emit_signal("damage_given",enemy,dmg)
		if dmg>=70:
			break
func _init():
	self.maxhp=660
	self.atk=2
	self.name="Kaenbyou Rin"
	self.skillCost=1080
	self.image="res://pic/rin2.png"
	self.heal=4
	self.desc="""
Skill: Ghost Party
Deal 50-100 damage to enemy
If damage is lower than 70 deal once again
Recursive
"""
