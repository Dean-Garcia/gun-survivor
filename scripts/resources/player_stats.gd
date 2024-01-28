extends Resource
class_name PlayerStats

@export var health: int = 100: set = set_health, get = get_health
@export var attack: float;
@export var experiencePoints: int;
@export var defense: float = 1;
@export var speed: float = 100.0;;

func set_health(amount: int):
	health = clamp(amount, 0, 255);
	
func get_health() -> int:
	return health;
	
