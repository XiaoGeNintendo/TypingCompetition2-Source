extends CharacterBase

class_name Okina

func onSkillA(me,sub,enemy,es,scene,isSub):
	if not isSub:
		var val=me.maxhp-2000
		me.maxhp=2000
		scene.emit_signal("damage_given",me,val)
		me.atk=5
		me.heal=5
		scene.get_node("VBoxContainer/TextureRect").texture=preload("res://pic/okina2.png")
func _init():
	self.maxhp=1000
	self.atk=1
	self.name="Matara Okina"
	self.skillCost=2000
	self.image="res://pic/okina.png"
	self.heal=1
	self.version=1
	self.desc="""
Skill: Stand up
When used as master
You will stand up and become an extra boss
Increase maxhp to 2000 and attack and heal to 5
"""
