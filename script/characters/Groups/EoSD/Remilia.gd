extends CharacterBase

class_name Remilia

func onSkill(me,enemy,scene):
	enemy.maxhp-=100
	me.maxhp+=100
	me.skillCost+=100
	scene.emit_signal("damage_given",enemy,100)
	scene.emit_signal("damage_given",me,-100)
	enemy.status.append(GDBuff.new("Bleeding",600,1,5))
	enemy.status.append(GSBuff.new("Headache",600,1,1))
	
	
func _init():
	self.maxhp=300
	self.atk=2
	self.name="Scarlet Remilia"
	self.skillCost=1000
	self.image="res://pic/remilia.png"
	self.heal=3
	self.desc="""
Skill: Mastermind Vampire
Drain 100 Max HP from the enemy
Increase skill cost by 100
Gives [Bleeding] [Headache] effect for 600 frames
[Bleeding] deals 1 damage per 5 frames
[Headache] removes 1 skill gauge per frame
"""
