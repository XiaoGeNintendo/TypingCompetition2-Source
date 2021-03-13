extends Control

var state=0
var glb
var PHASE_TIME
var time
func _ready():
	glb=get_node("/root/Global")
	PHASE_TIME=glb.phaseLength
	time=PHASE_TIME
	
	$Tween.interpolate_property($Label,"custom_colors/font_color",Color.green,Color.red,PHASE_TIME)
	$Tween.start()
	glb.incMana=2
	glb.decMana=1
	glb.death=0
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
			glb.incMana=4
		elif state==2:
			$Label.text="Triple\nSkill\nRefill!"
			glb.incMana=6
		else:
			$Label.text="Sudden\nDeath!"
			glb.death=state-2
