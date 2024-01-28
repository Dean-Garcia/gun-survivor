extends Resource
class_name EnemyStats

@export var health: int = 1: set = set_health, get = get_health
@export var attack: float;
@export var defense: float = 1;
@export var speed: float = 100.0;;
@export var elite: bool = false;
@export var experienceValue: int = 1;

func set_health(amount: int):
	health = clamp(amount, 0, 255);
	
func get_health() -> int:
	return health;
	
