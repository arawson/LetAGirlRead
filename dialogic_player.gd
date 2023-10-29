extends Node2D

func _ready():
    Dialogic.timeline_ended.connect(_on_dialogic_timeline_ended)

    Dialogic.start('letagirlread')


func _on_dialogic_timeline_ended():
    $Icon.visible = true
    print(Dialogic.VAR.TestGroup.AfterSchoolOption)