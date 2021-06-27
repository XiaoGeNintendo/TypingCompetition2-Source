extends Status
class_name SannyoBuff

func onCast(me, scene): #Required. Called every frame. me is a Character and scene is a GameSubview
	if me.checkAction("skill"):
		scene.emit_signal("damage_given",me,me.hp/2)
	
func _init():
	self.name="Confused" #Required
	self.time=7*60 #Required. In frames
