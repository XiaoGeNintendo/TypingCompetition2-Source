extends CharacterBase

class_name Shikieiki

func onSkill(me,enemy,scene):
	if enemy.hp>me.hp*2:
		scene.emit_signal("damage_given",enemy,1)
	if me.hp>enemy.hp*2:
		scene.emit_signal("damage_given",me,1)
	
	
func _init():
	self.maxhp=1000
	self.atk=1
	self.name="Shikieiki Yamaxanadu"
	self.skillCost=0
	self.image="res://pic/shikieiki.png"
	self.heal=3
	self.skillType=1
	self.desc="""
[Passive] Skill: Eye of judgement
Deal damage when enemy's HP is greater than self's double
and vice versa
"""
