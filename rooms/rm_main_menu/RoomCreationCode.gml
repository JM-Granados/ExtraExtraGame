// Fade-in solo si venimos de otra room
if (room_previous(room) != rm_main_menu) {
    var fade = instance_create_layer(0, 0, "Instances", obj_fade_controller);
    fade.fade_mode = "in";
    fade.fade_speed = 0.03;
    fade.fade_alpha = 1;
}