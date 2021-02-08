extends CharacterBase

class_name Nazrin

func onSkill(me,enemy,scene):
	me.skillCost*=2
	me.skillCost=min(me.skillCost,2000)
	if randi()%3==0:
		me.atk+=1
	elif randi()%2==0:
		me.heal+=1
	else:
		me.maxhp+=250
		scene.emit_signal("damage_given",me,-me.maxhp)
		
func _init():
	self.maxhp=250
	self.atk=0
	self.name="Nazrin"
	self.skillCost=10
	self.image="res://pic/nazrin.png"
	self.heal=0
	self.desc="""
Skill: Treasure Hunter
Increase attack by 1 or
Increase heal by 1 or
Increase maxhp by 250 and fully heal randomly
Double skill cost, but never exceed 2000
"""
