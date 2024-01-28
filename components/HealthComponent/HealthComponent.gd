extends Node2D
class_name HealthComponent

@export var MAX_HEALTH := 1.0
var health : float

func _ready():
	health = MAX_HEALTH;
		
func take_damage(attack):
	health -= attack;
	
	if health <=0:
		get_parent().queue_free();
		GameState.increaseExperience(get_parent().experienceValue)
		const SMOKE_SCENE = preload("res://entity/effects/smoke_explosion/smoke_explosion.tscn")
		var smoke = SMOKE_SCENE.instantiate();
		get_parent().get_parent().add_child(smoke);
		smoke.global_position = global_position;
