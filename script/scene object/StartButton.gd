extends Button

onready var Global=get_node("/root/Global")
const path="user://setting.zjs"

func on_Credit():
	get_tree().change_scene("res://credit.tscn")


func on_Start():
	get_tree().change_scene("res://charChoose.tscn")

func _ready():
	# load config file
	var config = ConfigFile.new()
	var res=config.load(path)
	
	if res==ERR_FILE_NOT_FOUND:
		config.set_value("config","phrase",60)
		config.set_value("config","music",100)
		config.set_value("config","hp",1)
		config.save(path)
		
		print("Saved config file")
	else:
		assert(res==OK,"Cannot load config file. Very fatal!!! Stop at once, at no cost!!")
	
	Global.phaseLength=config.get_value("config","phase",60)
	Global.musicVol=config.get_value("config","music",100)
	Global.HPMul=config.get_value("config","hp",1)
	
	print("Config Info:")
	print("PhaseLength:",Global.phaseLength)
	print("musicVol:",Global.musicVol)
	print("HPMul:",Global.HPMul)
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), Global.musicVol)
func _on_CC2_pressed():
	get_tree().change_scene("res://help.tscn")


func _on_CC3_pressed():
	get_tree().change_scene("res://setting.tscn")
