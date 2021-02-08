extends CharacterBase

class_name Kogasa

func onSkill(me,enemy,scene):
	me.status.append(KogasaBuff.new())
	me.skillCost=clamp(me.skillCost+500,0,1555)
func _init():
	self.maxhp=666
	self.atk=3
	self.name="Tatara Kogasa"
	self.skillCost=555
	self.image="res://pic/kogasa.png"
	self.heal=2
	self.desc="""
Skill: Waterproof Umbrella
Lock HP for 10 seconds
Increase skill cost by 500 but never exceed 1555
"""
