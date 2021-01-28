extends Status

class_name MomijiBuff

var dmg=10
func onCast(me, scene):
	if randi()%500==0:
		scene.emit_signal("damage_given",me,dmg)
		dmg*=2
func _init():
	self.name="Slash"
	self.time=30*60
