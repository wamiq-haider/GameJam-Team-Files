extends CharacterBody2D


const SPEED = 400.0
var direction: Vector2
var has_key = false


func _physics_process(delta: float) -> void:
	# Add the gravity.
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_vector("left","right","up","down")
		
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	animation()
	move_and_slide()
	
func animation():
	if direction: 
		$AnimatedSprite2D.flip_h = direction.x < 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = "right"
		else:
			$AnimatedSprite2D.animation = "up" if direction.y < 0 else "down"
	else:
		$AnimatedSprite2D.frame = 0 
	
	
	
	
	
	
	
	
	
	
	
