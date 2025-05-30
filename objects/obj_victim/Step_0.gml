/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

// Eliminar toda la lógica de movimiento y teclado
moviendo = true; // Forzar animación permanente

// Mantener posición fija (eliminar límites y actualizaciones de posición)
x = 388; // Establece coordenadas donde quieres que se quede
y = 645;

// Forzar animación de correr hacia izquierda permanentemente
sprite_index = spr_main_walk_left;
image_speed = anim_velocidad; // Velocidad de la animación

// Opcional: Reproducir sonido de pasos en loop
if (!audio_is_playing(snd_steps)) {
    audio_play_sound(snd_steps, 1, true);
}

// Red flash when hit
if (is_hit) {
	// "I'm gonna stop this" dialog
	instance_create_layer(x + 10, y - 50, layer, obj_victim_help);
    alarm[0] = room_speed * 1;
	
    hit_timer -= 1;
    if (hit_timer <= 0) {
        is_hit = false;
    }
}

if (hit_counter >= 5) {
	// Crear el controlador de fade
	var fade = instance_create_layer(0, 0, "House_Instances", obj_fade_controller);
	fade.target_room = rm_main_menu;
	fade.fade_mode = "out";
	fade.fade_speed = 0.008;
}