extends Status

class_name HinaBuff

var val=10000
func onCast(me, scene):
	val=min(val,me.hp)
	if self.time==0:
		scene.emit_signal("damage_given",me,me.hp-val)
func _init():
	self.name="Curse"
	self.time=300
