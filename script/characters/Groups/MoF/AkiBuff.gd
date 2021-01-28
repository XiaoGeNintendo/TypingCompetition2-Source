extends Status

class_name AkiBuff

var val=0
var interval=0
var da=0
var db=0

func onCast(me, scene):
	val+=1
	if val%interval==0:
		scene.emit_signal("damage_given",me,randi()%(db-da)+da)
	if randi()%4000==0:
		me.status.append(GDRBuff.new("Leaf of Autumn A",6000,1,3,60))
func _init():
	self.name="Leaf of Autumn B"
	self.time=6000
	self.interval=60
	self.da=1
	self.db=3
