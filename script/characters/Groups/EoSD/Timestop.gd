extends Status

class_name TimestopBuff

var val=0

func onCast(me, scene):
	me.skillGauge=0
	
func _init():
	self.name="Timestop"
	self.time=300
