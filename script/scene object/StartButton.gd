extends Button

func on_Credit():
	get_tree().change_scene("res://credit.tscn")


func on_Start():
	get_tree().change_scene("res://charChoose.tscn")


func _on_CC2_pressed():
	get_tree().change_scene("res://help.tscn")
