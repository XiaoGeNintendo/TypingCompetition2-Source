extends CharacterBase

class_name Sannyo

func onSkillA(me,sub,enemy,es,scene,isSub):
	enemy.status.append(SannyoBuff.new())
func _init():
	self.maxhp=823
	self.atk=3
	self.name="Komakusa Sannyo"
	self.skillCost=923
	self.image="res://pic/sannyo.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Change of methylation level
Whenever the enemy attempts to declare a spellcard in the following 7 seconds,
1/2 of enemy's current HP will be lost.
"""
