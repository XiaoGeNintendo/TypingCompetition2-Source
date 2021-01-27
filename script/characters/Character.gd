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
func _init(base: CharacterBase):
	self.base=base
	self.hp=base.maxhp
	self.skillGauge=0
	self.status=[]
	
	self.maxhp=base.maxhp
	self.atk=base.atk
	self.heal=base.heal
	self.skillCost=base.skillCost
