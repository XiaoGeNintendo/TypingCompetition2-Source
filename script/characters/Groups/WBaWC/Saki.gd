extends CharacterBase

class_name Saki

func onSkillA(me,sub,enemy,es,scene,isSub):
	enemy.status.append(GDRBuff.new("UFS",60,2,5,5))
	me.status.append(GDRBuff.new("AUFS",60,1,2,5))
	
func _init():
	self.maxhp=996
	self.atk=5
	self.name="Kurokoma Saki"
	self.skillCost=125
	self.image="res://pic/saki.png"
	self.heal=2
	self.version=1
	self.desc="""
Skill: Ultra Fast Skill
Deal 2-5 damage for each 5 frame for 60 frames
Deal 1-2 damage for each 5 frame for 60 frames for yourself too
"""
