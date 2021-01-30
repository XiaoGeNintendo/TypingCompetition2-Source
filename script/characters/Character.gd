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

var key: int

func keyInit(me,enemy):
	key=0
	if ai==0:
		key|=int(checkA1("attack"))
		key|=(int(checkA1("heal"))<<1)
		key|=(int(checkA2("gauge"))<<2)
		key|=(int(checkA1("skill"))<<3)
	else:
		key|=(1<<2)
		key|=(1<<3)
		key|=AI(me,enemy)

# This is open for use
func checkAction(id):
	var dict={
		"attack":0,
		"heal":1,
		"defense":1,
		"gauge":2,
		"skill":3
	}
	
	return (key&(1<<dict[id]))!=0

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

# Primitive Check Key
func checkA1(key):
	var prefix="p"+str(role+1)
	return Input.is_action_just_pressed(prefix+"_"+key)

# Primitive Check Key 
func checkA2(key):
	var prefix="p"+str(role+1)
	return Input.is_action_pressed(prefix+"_"+key)
		

# Primitive Check Key
func checkB1(key,default):
	var prefix="p"+str(role+1)
	if ai==0:
		return checkA1(key)
	else:
		return default

# Primitive Check Key 
func checkB2(key,default):
	var prefix="p"+str(role+1)
	if ai==0:
		return checkA2(key)
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
