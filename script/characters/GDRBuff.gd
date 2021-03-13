extends Status

class_name GDRBuff

var val=0
var interval=0
var da=0
var db=0

func onCast(me, scene):
	val+=1
	if val%interval==0:
		scene.emit_signal("damage_given",me,randi()%(db-da+1)+da)
func _init(name,time,da,db,interval):
	self.name=name
	self.time=time
	self.interval=interval
	self.da=da
	self.db=db
