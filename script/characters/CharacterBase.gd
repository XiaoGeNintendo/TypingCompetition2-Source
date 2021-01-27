
class_name CharacterBase
# Define attributes
var maxhp: int
var atk: int
var heal: int
var skillCost: int
var name: String
var image: String
var desc: String
# 0 is normal, 1 is passive
var skillType: int = 0 
# Please implement me
func onSkill(me, enemy, scene):
	pass
