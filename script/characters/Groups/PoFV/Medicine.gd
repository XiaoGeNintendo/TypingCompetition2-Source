extends CharacterBase

class_name Medicine

func onSkill(me,enemy,scene):
	if enemy.checkAction("attack"):
		scene.emit_signal("damage_given",enemy,1)
func _init():
	self.maxhp=475
	self.atk=1
	self.name="Medicine Melancholy"
	self.skillCost=0
	self.image="res://pic/medicine.png"
	self.heal=2
	self.skillType=1
	self.desc="""
[Passive]Skill: Poison of Envy
When enemy attacks, always deal 1 damage to herself.
Doesn't work on AI because they are robot which are not affected by poison.
"""
