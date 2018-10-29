extends KinematicBody

onready var shoot = preload("res://Shoot.tscn")
onready var cena = get_parent()

func _ready():
	set_physics_process(true)

func _move(delta):
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector3(3 *delta,0,0))
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector3(-3 *delta,0,0))
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector3(0,3 *delta,0))
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector3(0,-3 *delta,0))
		
func _physics_process(delta):
	_move(delta)
	
	if Input.is_action_just_pressed("ui_select"):
		var newshoot = shoot.instance()
		newshoot.transform.origin = transform.origin
		cena.add_child(newshoot)
	