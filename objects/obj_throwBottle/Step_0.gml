if (global.paused) {
    exit; // Skip updating while paused
}

// Spin
image_angle += angle_speed;

// Destroy if off-screen to the right
if (x > display_get_width()) {
    instance_destroy();
}

if (x < -sprite_width * image_xscale) {
    instance_destroy();
}
