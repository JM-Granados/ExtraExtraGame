/// @description Insert description here
// You can write your code in this editor

// Mover en la dirección asignada
x += lengthdir_x(velocidad, direccion);

// Rotar el sprite
image_angle += rotacion;

// Destruir si sale de la pantalla
if (x < -sprite_width) {  // Si está completamente fuera a la izquierda
    instance_destroy();
}


//Para entregarlo
