extends Camera

onready var nave = get_parent().get_child(2)

func _ready():
	set_process(true)

func _process(delta):
	look_at(nave.transform.origin, Vector3(0,1,0))
