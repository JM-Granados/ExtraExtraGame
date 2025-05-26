// Destroy the bottle on collision with the player

with (obj_confidence_manager) {
	current_confidence = obj_confidence_manager.confidence_score
	if(current_confidence - 100 > 0) {
		obj_confidence_manager.confidence_score -= 100
	} else {
		obj_confidence_manager.confidence_score = 0
	}
}

instance_destroy();
