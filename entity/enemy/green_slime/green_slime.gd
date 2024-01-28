extends CharacterBody2D

@export var stats: EnemyStats;
@onready var player = get_node("/root/Game/Player");
@onready var experienceValue = stats.experienceValue;

func _ready():
	%Slime.play_walk()

func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position);
	velocity = direction * stats.speed;
	move_and_slide();

func take_damage(attack):
	%Slime.play_hurt();
	%HealthComponent.take_damage(attack);

