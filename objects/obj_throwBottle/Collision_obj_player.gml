// Destroy the bottle on collision with the player

with (obj_confidence_manager) {
	current_confidence = obj_confidence_manager.confidence_score
	if(current_confidence - 100 > 0) {
		obj_confidence_manager.confidence_score -= global.throw_bottle_damage
	} else {
		obj_confidence_manager.confidence_score = 0
	}
}

// Trigger red flash
other.is_hit = true;
other.hit_timer = room_speed / 2; // Half a second (30 frames if room_speed is 60)

audio_play_sound(snd_bottle, 1, false);
audio_play_sound(snd_ouch, 1, false);

instance_destroy();
