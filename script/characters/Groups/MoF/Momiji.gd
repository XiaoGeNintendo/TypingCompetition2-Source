extends CharacterBase

class_name Momiji

func onSkill(me,enemy, scene):
	enemy.status.append(MomijiBuff.new())
	
func _init():
	self.maxhp=925
	self.atk=4
	self.name="Inubashiri Momizi"
	self.skillCost=1000
	self.image="res://pic/momizi.png"
	self.heal=2
	self.desc="""
Skill: Swordman's Dash
For the next 30 seconds, 
there's a 0.4% possibility each frame to slash enemy once
1st-slash damage is 10
2nd-slash damage is 20
3rd-slash damage is 40
...
"""
