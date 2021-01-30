extends CharacterBase

class_name Chen

func onSkill(me,enemy,scene):
	var prefix="p"+str(me.role+1)
	if me.checkB2("attack",true):
		enemy.status.append(GDBuff.new("Cats!!",900,60,300))
	elif me.checkB2("defense",true):
		me.status.append(GDBuff.new("Cats!!",900,-60,300))
	else:
		scene.emit_signal("damage_given",me,10)
	
func _init():
	self.maxhp=580
	self.atk=2
	self.name="Chen"
	self.skillCost=999
	self.image="res://pic/chen.png"
	self.heal=1
	self.desc="""
Skill: Cat Summon
If pressed without any other key:
	Summon a cat to deal 10 damage to yourself
If pressed with attack key:
	Summon 3 cats to deal 60 damage every 300 frames
If pressed with heal key:
	Summon 3 cats to heal 60 HP every 300 frames
"""
