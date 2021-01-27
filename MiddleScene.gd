extends Control

var state=0
const PHASE_TIME=60
var time=PHASE_TIME
onready var glb=get_node("/root/Global")
func _ready():
	$Tween.interpolate_property($Label,"custom_colors/font_color",Color.green,Color.red,PHASE_TIME)
	$Tween.start()
	pass # Replace with function body.

func _on_Timer_timeout():
	time-=1
	$Label.text=str(time)
	
	if time==0:
		
		$Tween.interpolate_property($Label,"custom_colors/font_color",Color.green,Color.red,PHASE_TIME)
		$Tween.start()
		state+=1
		time=PHASE_TIME
		if state==1:
			$Label.text="Double\nSkill\nRefill!"
			glb.incMana=2
		elif state==2:
			$Label.text="Triple\nSkill\nRefill!"
			glb.incMana=3
		else:
			$Label.text="Sudden\nDeath!"
			glb.death=state-2
