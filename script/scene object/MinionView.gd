extends Control

var minion: Character
var first=true

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if minion != null and first==true:
		$TextureRect.texture=load(self.minion.base.image)
		$Draw.pl=self.minion
		first=false
