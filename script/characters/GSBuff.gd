extends Status

class_name GSBuff

var val=0
var interval=0
var damage=0

func onCast(me, scene):
	val+=1
	if val%interval==0:
		me.skillGauge-=damage
func _init(name,time,damage,interval):
	self.name=name
	self.time=time
	self.interval=interval
	self.damage=damage
