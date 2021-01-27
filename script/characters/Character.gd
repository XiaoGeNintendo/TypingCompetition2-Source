extends Object

class_name Character

var hp: int
var base: CharacterBase
var skillGauge: int
var status: Array
# For single-use modify
var maxhp: int
var skillCost: int
var atk: int
var heal: int
var role: int #0 = player 1, 1 = player 2
var vars: Dictionary = {} #Custom Variable
var ai: int #AI Level 0=player

# 0 = no key, 1 = attack, 2 = heal
func AI(me,enemy):
	if ai==0:
		return 0
	if randi()%[120,60,30,15,5][ai-1]!=0:
		return 0
	var prioA=((enemy.maxhp-enemy.hp)*2+me.hp)*me.atk/5
	var prioB=((me.maxhp-me.hp)*2+enemy.hp)*me.heal/5
	if randi()%(prioA+prioB)<prioA:
		return 1
	else:
		return 2
	
func check(key,default):
	var prefix="p"+str(role+1)
	if ai==0:
		return Input.is_action_just_pressed(prefix+"_"+key)
	else:
		return default
		
func check2(key,default):
	var prefix="p"+str(role+1)
	if ai==0:
		return Input.is_action_pressed(prefix+"_"+key)
	else:
		return default
		


func _init(base: CharacterBase):
	self.base=base
	self.hp=base.maxhp
	self.skillGauge=0
	self.status=[]
	
	self.maxhp=base.maxhp
	self.atk=base.atk
	self.heal=base.heal
	self.skillCost=base.skillCost
