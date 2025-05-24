// Spin
image_angle += angle_speed;

// Destroy if off-screen to the right
if (x > display_get_width()) {
    instance_destroy();
}
