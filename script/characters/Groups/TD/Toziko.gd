extends CharacterBase

class_name Toziko

func onSkill(me,enemy,scene):
	enemy.status.append(GDRBuff.new("lightning",600,100,300,600))
	
func _init():
	self.maxhp=575
	self.atk=3
	self.name="Soga no Toziko"
	self.skillCost=1000
	self.image="res://pic/toziko.png"
	self.heal=1
	self.desc="""
Skill: Delayed Lightning
Summon a lightning 10 seconds later with damage from 100-300
"""
