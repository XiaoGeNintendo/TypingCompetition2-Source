extends CharacterBase

class_name Yamame

func onSkill(me,enemy,scene):
	var to=(me.hp+enemy.hp)/2
	scene.emit_signal("damage_given",me,me.hp-to)
	scene.emit_signal("damage_given",enemy,enemy.hp-to)
	
func _init():
	self.maxhp=440
	self.atk=3
	self.name="Kurodani Yamame"
	self.skillCost=880
	self.image="res://pic/yamame.png"
	self.heal=2
	self.desc="""
Skill: Spider net Horror
selfHP=(enemyHP+selfHP)/2
same for enemy
"""
