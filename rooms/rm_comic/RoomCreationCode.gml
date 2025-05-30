// Crear fade controller para fade-in al entrar al cómic
if (!instance_exists(obj_fade_controller)) {
    var fade = instance_create_layer(0, 0, "Instances", obj_fade_controller);
    fade.fade_mode = "in";
    fade.fade_speed = 0.03;
    fade.fade_alpha = 1; // Comenzar completamente oscuro
}