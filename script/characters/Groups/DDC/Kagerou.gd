extends CharacterBase

class_name Kagerou

func onSkill(me,enemy,scene):
	if scene.Global.death > 0:
		me.atk=7
		me.heal=7
	
func _init():
	self.maxhp=615
	self.atk=3
	self.name="Imaizumi Kagerou"
	self.skillCost=0
	self.image="res://pic/kagerou.png"
	self.heal=1
	self.skillType=1
	self.desc="""
[Passive]Skill: Full moon Wolf
When in sudden-death mode, heal and attack will be 7
"""
