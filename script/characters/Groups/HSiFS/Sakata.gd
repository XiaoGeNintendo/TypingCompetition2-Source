extends CharacterBase

class_name Sakata

func onSkill(me,enemy,scene):
	enemy.status.append(GDRBuff.new("Wildness",60,10,50,randi()%29+1))
	pass
	
func _init():
	self.maxhp=470
	self.atk=4
	self.name="Sakata Nemuno"
	self.skillCost=919
	self.image="res://pic/sakata.png"
	self.heal=1
	self.desc="""
Skill: Out-in-the-wild
Deal 10-50 damage in a random interval for 60 frames
(At least deal twice)
"""
