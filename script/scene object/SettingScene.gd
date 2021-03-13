extends Control

onready var Global=get_node("/root/Global")
# Called when the node enters the scene tree for the first time.
func _ready():
	$Volume/val.value=Global.musicVol
	$Length/val.value=Global.phaseLength
	$Multi/val.value=Global.HPMul



func _on_Button_pressed():
	var cfg=ConfigFile.new()
	cfg.set_value("config","music",$Volume/val.value)
	cfg.set_value("config","phase",$Length/val.value)
	cfg.set_value("config","hp",$Multi/val.value)
	cfg.save("user://setting.zjs")
	print("Save config success")
	get_tree().change_scene("res://start.tscn")


func _on_Button2_pressed():
	if $AudioStreamPlayer.playing:
		$AudioStreamPlayer.stop()
	else:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), $Volume/val.value)
		$AudioStreamPlayer.play()


func _on_val_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), $Volume/val.value)
