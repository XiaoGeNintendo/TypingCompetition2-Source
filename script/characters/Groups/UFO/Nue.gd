extends CharacterBase

class_name Nue

func onSkill(me,enemy,scene):
	enemy.skillCost=randi()%1500+500

func _init():
	self.maxhp=525
	self.atk=1
	self.name="Houjuu Nue"
	self.skillCost=0
	self.image="res://pic/nue.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive] Skill: Sukiru fumei
Randamu teki no sukiru kosuto 
hani wa go sen kara nichi
"""
