extends Control

enum Player {PLAYER_1,PLAYER_2,SUB_1,SUB_2}

#Which player is playing this subview
export(Player) var player

var gId=0
var cId=0
var confirm
var ailvl=0

onready var Characters=get_node("/root/AvailableCharacters")

signal player_confirmed

func _ready():
	if player%2==1:
		$image.flip_h=true
	reload()
	$ready.visible=false
	if player>=Player.SUB_1:
		$HP.visible=false
		$Attack.visible=false
		$Heal.visible=false
		$ai.visible=false
	
func reload():
	var cb=Characters.chars[gId].group[cId]
	$group.text=Characters.chars[gId].name
	$name.text=cb.name
	$image.texture=load(cb.image)
	$HP.changeValue(cb.maxhp)
	$Attack.changeValue(cb.atk)
	$Heal.changeValue(cb.heal)
	$Skillcost.changeValue(cb.skillCost)
	if player>=Player.SUB_1:
		if cb.skillType!=0:
			$desc.text="!!Passive skill is disabled in minion mode!!"
		elif cb.nosub:
			$desc.text="!!This character is disabled in minion mode!!"
		else:
			$desc.text=cb.desc
	else:
		$desc.text=cb.desc
		
func _input(event):
	update()
	var prefix="p"+str(player%2+1)
		
	var l=len(Characters.chars[gId].group)
	var ll=len(Characters.chars)
	
	if Input.is_action_just_pressed(prefix+"_confirm"):
		var cb=Characters.chars[gId].group[cId]
		if player<Player.SUB_1 or cb.skillType==0 and cb.nosub==false:
			confirm=not confirm
			$ready.visible=confirm
			emit_signal("player_confirmed")
	
	if confirm:
		return
		
	if Input.is_action_just_pressed(prefix+"_attack"):
		cId+=1
		if cId==l:
			gId=(gId+1)%ll
			cId=0
		reload()
	if Input.is_action_just_pressed(prefix+"_defense"):
		cId-=1
		if cId==-1:
			gId=(gId+ll-1)%ll
			cId=len(Characters.chars[gId].group)-1
		reload()
	if Input.is_action_just_pressed(prefix+"_gauge"):
		gId=(gId+ll-1)%ll
		cId=0
		reload()
	if Input.is_action_just_pressed(prefix+"_skill"):
		gId=(gId+1)%ll
		cId=0
		reload()
	if player<Player.SUB_1 and Input.is_action_just_pressed(prefix+"_ai"):
		ailvl=(ailvl+1)%6
		if ailvl==0:
			$ai.text="Player Control"
		else:
			$ai.text="AI Lv.%d"%ailvl
