extends Control

func draw_circle_arc(center, radius, angle_from, angle_to, color):
	var nb_points = 32
	var points_arc = PoolVector2Array()

	for i in range(nb_points + 1):
		var angle_point = deg2rad(angle_from + i * (angle_to-angle_from) / nb_points - 90)
		points_arc.push_back(center + Vector2(cos(angle_point), sin(angle_point)) * radius)

	for index_point in range(nb_points):
		draw_line(points_arc[index_point], points_arc[index_point + 1], color)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var pl:Character
func _draw():
	if pl != null:
		draw_circle_arc(Vector2(16,16),20,0,1.0*pl.skillGauge/pl.skillCost*360,Color(1,0,0))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update()
