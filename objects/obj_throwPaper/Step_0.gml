/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

if (entrega) {
	if (!detenido) {
	    // Mover normalmente
	    y -= velocidad;
    
		// Rotar mientras sube
		image_angle += rotacion;  // Ajusta la velocidad de rotación
	    
		// Verificar posición Y
	    if (y <= 350) {
	        detenido = true; // Activar bandera de detención
	        y = 350; // Fijar posición exacta
			audio_play_sound(snd_fake_deliver, 1, false);
			with (obj_confidence_manager) {
				current_confidence = obj_confidence_manager.confidence_score
				if(current_confidence - 50 > 0) {
					obj_confidence_manager.confidence_score -= 50
				} else {
					obj_confidence_manager.confidence_score = 0
				}
			}
	    }
	}
	else {
	    // Comportamiento al estar detenido (opcional)
	    x -= 4;
		// Destruir al salir de la pantalla
		if (x < -sprite_width) {
		    instance_destroy();
		}
	}
}
else {
	// Mover en la dirección asignada
	x += lengthdir_x(velocidad, direccion);

	// Rotar el sprite
	image_angle += rotacion;

	// Destruir si sale de la pantalla
	if (x < -sprite_width) {  // Si está completamente fuera a la izquierda
		instance_destroy();
	}
}
