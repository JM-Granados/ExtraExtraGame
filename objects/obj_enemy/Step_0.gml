if (global.paused) {
    exit; // Skip updating while paused
}

// Stop when reaching the center of the screen
if (x >= display_get_width() / 6) {
    x = display_get_width() / 6;
    hspeed = 0;
}

// Countdown the throw timer
throw_timer -= 1;

if (throw_timer <= 0) {
    // Throw the bottle
    instance_create_layer(x, y, "Projectile_instances", obj_throwBottle);

    // Reset the timer to another 3–6 seconds
    throw_timer = irandom_range(room_speed * 3, room_speed * 6);
}

// Red flash when hit
if (is_hit) {
    hit_timer -= 1;
    if (hit_timer <= 0) {
        is_hit = false;
    }
}