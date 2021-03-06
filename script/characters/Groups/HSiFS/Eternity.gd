extends CharacterBase

class_name Eternity

func onSkill(me,enemy,scene):
	enemy.status.append(GDBuff.new("Powder",300,enemy.maxhp/100,60))
	pass
	
func _init():
	self.maxhp=114
	self.atk=1
	self.name="Eternity Larva"
	self.skillCost=620
	self.image="res://pic/eternity.png"
	self.heal=1
	self.desc="""
Skill: Butterfly Powder
Deal 1% damage of enemy's current maxhp every 60 frames for 300 frames
"""
