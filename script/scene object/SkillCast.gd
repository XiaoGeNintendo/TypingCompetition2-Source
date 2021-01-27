extends Control

export(Texture) var texture
export(bool) var flip

func _ready():
	$TextureRect.texture=texture
	$TextureRect.flip_h=flip
	$AnimationPlayer.play("skillCast")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
