extends Node2D

func _ready():
	Dialogic.text_signal.connect(_on_dialogic_text_signal)
	Dialogic.signal_event.connect(_on_dialogic_signal_event)
	Dialogic.timeline_ended.connect(_on_dialogic_timeline_ended)

	Dialogic.start('letagirlread')


func _on_dialogic_timeline_ended():
	$Icon.visible = true
	print(Dialogic.VAR.TestGroup.AfterSchoolOption)
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_dialogic_text_signal(text: String):
	print("text signal " + text)


func _on_dialogic_signal_event(argument: String):
	print("event signal " + argument)
	match argument:
		"knife":
			$BloodSplatter.visible = true
