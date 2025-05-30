event_inherited();


// Crear fade controller para fade-out
var fade = instance_create_layer(0, 0, "Instances", obj_fade_controller);
fade.target_room = rm_comic;
fade.fade_mode = "out";
fade.fade_speed = 0.008;
fade.fade_alpha = 0;