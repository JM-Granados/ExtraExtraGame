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
    hit_timer -= 1;
    if (hit_timer <= 0) {
        is_hit = false;
    }
}