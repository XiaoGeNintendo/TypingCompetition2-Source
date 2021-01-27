extends Control

export(int) var maxvalue
export(String) var valName
var anmValue=0

func _ready():
	$Label.text=valName
	$ProgressBar.max_value=maxvalue
	$ProgressBar.value=0

func _process(delta):
	$ProgressBar.value=anmValue
	$Label2.text=str(round(anmValue))
	
func changeValue(val):
	$Tween.interpolate_property(self,"anmValue",anmValue,val,0.5)
	if not $Tween.is_active():
		$Tween.start()
