extends Status

class_name YuyukoBuff


func onCast(me, scene):
	if me.hp<=me.maxhp*0.2:
		scene.emit_signal("damage_given",me,-me.maxhp)
		self.time=0
func _init():
	self.name="Barrier"
	self.time=600
