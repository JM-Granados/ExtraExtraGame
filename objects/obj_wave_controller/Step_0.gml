// No enemies on screen and we're not already counting
if (instance_number(obj_enemy) == 0 && wave_delay == -1) {
    wave_delay = room_speed * 10; // Start 10-second countdown
}

// If timer is counting
if (wave_delay > 0) {
    wave_delay -= 1;
}

// Time's up — spawn new wave
if (wave_delay == 0) {
    wave_delay = -1; // Reset timer

    // Call a script or spawn enemies directly here
    spawn_enemy_wave();
}
