extends CharacterBase

class_name Whiterock

func onSkill(me,enemy,scene):
	enemy.status.append(GSBuff.new("Cold",600,2,1))
	pass
	
func _init():
	self.maxhp=460
	self.atk=2
	self.name="Letty Whiterock"
	self.skillCost=770
	self.image="res://pic/whiterock.png"
	self.heal=2
	self.desc="""
Skill: Enlengthened Winter
Cast [Cold] effect on enemy for 600 frames
Remove 2 skill gauge every frame
"""
