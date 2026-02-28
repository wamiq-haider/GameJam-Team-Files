extends Node2D
 
var player_in_range = false
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if player_in_range and Input.is_action_just_pressed("interact"):
		print("picked")
		pick_up_key()


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		player_in_range = true
		print("in range")
	

func _on_area_2d_body_exited(body):
	if body.name == "Player":
		player_in_range = false

func pick_up_key():
	get_parent().get_node("Player").has_key = true
	print("key picked")
	$Key01.queue_free()
	
