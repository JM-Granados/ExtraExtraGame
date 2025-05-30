if (global.paused) {
    exit; // Skip updating while paused
}

if (instance_number(obj_enemy) == 0 && wave_delay == -1) {
    wave_delay = room_speed * 10;
}

if (wave_delay > 0) {
    wave_delay -= 1;
}

if (wave_delay == 0) {
    wave_delay = -1;
    round_num += 1;
	show_debug_message("Spawning wave: round_num = " + string(round_num));
	if (!obj_player.transformed) {
		spawn_enemy_wave();
	}
}
