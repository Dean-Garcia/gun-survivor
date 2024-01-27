extends Area2D

var travelled_distance = 0;
var attack = 1;

func _physics_process(delta):
	const SPEED = 1000;
	const MAX_RANGE = 1200;
	var direction = Vector2.RIGHT.rotated(rotation);
	position += direction * SPEED * delta;
	
	travelled_distance += SPEED * delta;
	if travelled_distance > MAX_RANGE: 
		queue_free();

func _on_body_entered(body):
	queue_free()
	if body.has_method('take_damage'):
		body.take_damage(attack);
