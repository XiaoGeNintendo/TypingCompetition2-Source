extends Status

class_name MurasaBuff

var hp=-1
func onCast(me, scene):
	if me.skillGauge<hp:
		me.status.append(MurasaBuffB.new())
		self.time=-1
	else:
		hp=me.skillGauge
func _init():
	self.name="Habour"
	self.time=600
