extends CharacterBase

class_name Utsuho

func onSkill(me,enemy,scene):
	if not "dmg" in me.vars:
		me.vars["dmg"]=100
	scene.emit_signal("damage_given",enemy,me.vars["dmg"])
	me.vars["dmg"]*=2
	scene.Global.incMana*=2
	scene.Global.decMana*=4

func _init():
	self.maxhp=528
	self.atk=5
	self.name="Reiuzi Utsuho"
	self.skillCost=2000
	self.image="res://pic/utsuho.png"
	self.heal=0
	self.desc="""
Skill: Hell and Heaven Meltdown
-=CAUTION CAUTION CAUTION CAUTION CAUTION=-
Deal 100 damage
Double(2x) everyone's gauge refill speed
Quadruple(4x) everyone's gauge drop speed
Double(2x) this skill's damage
-=CAUTION CAUTION CAUTION CAUTION CAUTION=-
"""
