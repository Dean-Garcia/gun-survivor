extends Area2D

@export var health_component : HealthComponent

func take_damage(attack):
	print('took damage');
	health_component.take_damage(attack);
