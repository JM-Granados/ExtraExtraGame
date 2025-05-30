/// @description Insert description here
// You can write your code in this editor


with (obj_confidence_manager) {
	current_confidence = obj_confidence_manager.confidence_score
	if(current_confidence - 100 > 0) {
		obj_confidence_manager.confidence_score -= global.throw_body_damage
	} else {
		obj_confidence_manager.confidence_score = 0
	}
}

