extends Status

class_name KogasaBuff

var hp=-1
func onCast(me, scene):
	if hp==-1:
		hp=me.hp
	else:
		if me.hp!=hp:
			scene.emit_signal("damage_given",me,me.hp-hp)
func _init():
	self.name="Waterproof"
	self.time=600
