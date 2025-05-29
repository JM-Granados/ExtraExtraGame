/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

// Eliminar toda la lógica de movimiento y teclado
moviendo = true; // Forzar animación permanente

// Mantener posición fija (eliminar límites y actualizaciones de posición)
x = 1280; // Establece coordenadas donde quieres que se quede
y = 645;

// Forzar animación de correr hacia izquierda permanentemente
sprite_index = spr_main_walk_left;
image_speed = anim_velocidad; // Velocidad de la animación

// Opcional: Reproducir sonido de pasos en loop
if (!audio_is_playing(snd_loud_steps)) {
    audio_play_sound(snd_loud_steps, 1, true);
}




//Disparar periódico
// Reducir cooldown
if (contador_cooldown > 0) contador_cooldown -= 1;

// Al presionar T y no estar en cooldown
if (keyboard_check_pressed(ord("T")) && contador_cooldown <= 0) {
    contador_cooldown = cooldown_lanzar;
	
    // Crear el periódico
    var bottle = instance_create_layer(x, y, "House_instances", obj_throwBottle_player);
	
	bottle.direccion = 180;      // 180 grados = izquierda
    bottle.velocidad = 15;       // Velocidad rápida
    bottle.rotacion = -15;       // Rotación antihoraria
	
	// Ajustar posición inicial (evitar que aparezca dentro del jugador)
    bottle.x = x - 20;  // Offset izquierdo
    bottle.y = y;
	
	// Efecto de sonido
    audio_play_sound(snd_paper, 1, false);
}