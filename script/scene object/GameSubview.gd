extends Control

enum Player {PLAYER_1,PLAYER_2}

export(Player) var player

var pl: Character
var enemy: Character

var dsc = preload("res://damageDisplay.tscn")

signal damage_given(person,value)
signal skill_used(person)

onready var Global=get_node("/root/Global")
func dealDmg(person, damage):
	if person==pl:
		person.hp-=damage
		person.hp=clamp(person.hp,0,person.maxhp)
		$VBoxContainer/HP.changeValue(person.hp)
		$VBoxContainer/danger.visible=(person.hp<=person.maxhp*0.2)
		
		# Add Subview of Animation
		var dmg=dsc.instance()
		dmg.set_position(Vector2(100,350))
		dmg.value=damage
		add_child(dmg)
		

func _ready():
	if player==Player.PLAYER_1:
		pl=Global.p1
		enemy=Global.p2
	else:
		pl=Global.p2
		enemy=Global.p1
		$VBoxContainer/TextureRect.flip_h=true
	
	$VBoxContainer/HP.changeValue(pl.hp)
	$VBoxContainer/danger.visible=false
	$VBoxContainer/TextureRect.texture=load(pl.base.image)
	connect("damage_given",self,"dealDmg")

func _process(delta):
	# Key Process
	var ai=pl.AI(pl,enemy)
	if pl.check("attack",false) || ai==1:
		emit_signal("damage_given",enemy,pl.atk)
	if pl.check("defense",false) || ai==2:
		emit_signal("damage_given",pl,-pl.heal)
	if pl.check("skill",true) and pl.base.skillType==0:
		if pl.skillGauge>=pl.skillCost:
			pl.skillGauge-=pl.skillCost
			$VBoxContainer/Skill.changeValue(pl.skillGauge)
			pl.base.onSkill(pl,enemy,self)
			emit_signal("skill_used",pl)
			
	# Skill gauge filling
	var prefix="p"+str(player+1)
	if pl.check2("gauge",true):
		if pl.skillGauge<1000:
			pl.skillGauge+=Global.incMana
		else:
			if randi()%3==1:
				pl.skillGauge+=Global.incMana/2
	else:
		pl.skillGauge-=Global.decMana
	pl.skillGauge=clamp(pl.skillGauge,0,2000)
	
	if pl.skillGauge>=pl.skillCost:
		$VBoxContainer/skR.text="Skill OK!!"
		$VBoxContainer/skR.set("custom_colors/font_color",Color.green)
	else:
		$VBoxContainer/skR.text="Preparing:%d%%"%[100.0*pl.skillGauge/pl.skillCost]
		$VBoxContainer/skR.set("custom_colors/font_color",Color.red)
	
	if pl.base.skillType==1:
		pl.base.onSkill(pl,enemy,self)
	
	$VBoxContainer/Skill.changeValue(pl.skillGauge)
	
	# Status display
	var showContent=""
	for i in pl.status:
		showContent+="[%s] %.01f s left\n" % [i.name,i.time/60.0]
		i.time-=1
		i.onCast(pl,self)
	
	# Delete
	var index=0
	while true:
		if index >= len(pl.status):
			break
		if pl.status[index].time<=0:
			pl.status.remove(index)
		else:
			index+=1
	
	# Sudden death
	if Global.death>0 and randi()%5==0:
		emit_signal("damage_given",pl,Global.death)
	
	# Show something
	$VBoxContainer/Label.text=showContent
	$VBoxContainer/HP/ProgressBar.max_value=pl.maxhp
	
func _input(event):
	pass

