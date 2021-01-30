extends CharacterBase

class_name Eirin

func onSkill(me,enemy, scene):
	me.status.append(GDRBuff.new("Elixir",600,-200,50,60))
func _init():
	self.maxhp=450
	self.atk=1
	self.name="Yagokoro Eirin"
	self.skillCost=1500
	self.image="res://pic/eirin.png"
	self.heal=4
	self.desc="""
Skill: Hourai Elixir
Drink [Elixir] for 600 frames
Recover -50 to 200 HP every 60 frames
"""
