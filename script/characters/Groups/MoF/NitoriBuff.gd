extends Status

class_name NitoriBuff

var val=10000
func onCast(me, scene):
	if self.time==15*60-1:
		me.maxhp+=2000
		scene.emit_signal("damage_given",me,-2000)
		me.atk=5
		me.heal=5
	if self.time==0:
		me.maxhp-=2000
		scene.emit_signal("damage_given",me,2000)
		me.atk=3
		me.heal=1
func _init():
	self.name="KAPPA-MAX"
	self.time=15*60
