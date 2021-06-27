extends CharacterBase

class_name Megumu

func onSkillA(me,sub,enemy,es,scene,isSub):
	enemy.status.append(GDBuff.new("Bubble of Death",60*60,enemy.maxhp*0.9,60*60))
func _init():
	self.maxhp=991
	self.atk=5
	self.name="Iizunamaru Megumu"
	self.skillCost=1997
	self.image="res://pic/megumu.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Dazzling Iridescence
Generate a bubble of damage which will deal enormous damage(90% of maxhp) after 60 seconds.
"""
