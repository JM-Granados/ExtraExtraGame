if (global.paused) {
    exit; // Skip updating while paused
}

// Mover en la dirección asignada
x += lengthdir_x(velocidad, direccion);

// Rotar el sprite
image_angle += rotacion;

// Destruir si sale de la pantalla
if (x < -sprite_width) {  // Si está completamente fuera a la izquierda
	instance_destroy();
}