extends ProgressBar

func _process(delta):
	self.value = GameState.experience;
	self.max_value = GameState.nextLevelAt;
	self.min_value = GameState.lastLevelAt;
