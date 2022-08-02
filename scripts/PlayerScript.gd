extends KinematicBody2D

var velocity: Vector2 = Vector2()


func read_input(delta: float):
    velocity = Vector2()
    
    if Input.is_action_pressed("up"):
        velocity.y -= 1 * delta;
    if Input.is_action_pressed("down"):
        velocity.y += 1 * delta;
    if Input.is_action_pressed("left"):
        velocity.x -= 1 * delta;
    if Input.is_action_pressed("right"):
        velocity.x += 1 * delta;
        
    velocity = velocity.normalized() * 30 * delta
    velocity = move_and_slide(velocity * 200)
    
func _physics_process(delta):
    read_input(delta)
    
