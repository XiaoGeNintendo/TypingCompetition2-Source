
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
# 0 is old(<1.10), 1 is new (>=1.10)
var version: int = 0

func skillB(me,sub,enemy,es,scene,isSub):
	if version==0:
		onSkill(me,enemy,scene)
	else:
		onSkillA(me,sub,enemy,es,scene,isSub)
# Please implement me
func onSkill(me, enemy, scene):
	pass
# Or me
func onSkillA(me,sub,enemy,es,scene,isSub):
	pass
