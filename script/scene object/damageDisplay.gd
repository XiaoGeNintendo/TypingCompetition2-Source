extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(float) var value


# Called when the node enters the scene tree for the first time.
func _ready():
	var node=$Label
	if value==0:
		node.text="Block"
		node.set("custom_colors/font_color",Color.gray)
	elif value>0:
		node.text="-%d"%value
		node.set("custom_colors/font_color",Color.red)
	else:
		node.text="+%d"%(-value)
		node.set("custom_colors/font_color",Color.green)
	$AnimationPlayer.play("Shrink")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
