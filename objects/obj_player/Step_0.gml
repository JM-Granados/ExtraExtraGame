/// @description Insert description here
// You can write your code in this editor

moviendo = false;
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));


// Actualizar última tecla presionada en cada eje
if (key_up) {
    last_vertical = "up";
    moviendo = true;
}
else if (key_down) {
    last_vertical = "down";
    moviendo = true;
}
else {
    last_vertical = "none";
}

if (key_left) {
    last_horizontal = "left";
    moviendo = true;
}
else if (key_right) {
    last_horizontal = "right";
    moviendo = true;
}
else {
    last_horizontal = "none";
}

// Mover en ambos ejes (si hay teclas presionadas)
if (last_vertical != "none") {
    if (last_vertical == "up") y -= velocidad;
    else y += velocidad;
    sprite_index = (last_vertical == "up") ? spr_main_walk_up : spr_main_walk_down;
}

if (last_horizontal != "none") {
    if (last_horizontal == "left") x -= velocidad;
    else x += velocidad;
    sprite_index = (last_horizontal == "left") ? spr_main_walk_left : spr_main_walk_right;
}

// Prioridad: Si hay movimiento en ambos ejes, mostrar dirección horizontal
if (last_horizontal != "none" && last_vertical != "none") {
    sprite_index = (last_horizontal == "left") ? spr_main_walk_left : spr_main_walk_right;
}

// Animación
if (moviendo) {
    image_speed = anim_velocidad;
	
	var current_frame = floor(image_index); // Frame actual de la animación
    
    // Si estamos en un frame de paso y no se ha reproducido ya en este frame
    if (array_contains(paso_frames, current_frame) && (current_frame != ultimo_frame_paso)) {
        audio_play_sound(snd_steps, 1, false);
        ultimo_frame_paso = current_frame; // Actualizar el último frame
    }
    
    // Resetear si salimos de los frames de paso
    if (!array_contains(paso_frames, current_frame)) {
        ultimo_frame_paso = -1;
    }
	
} else {
    image_index = 0;
    image_speed = 0;
    sprite_index = spr_main_character; // Sprite inicial parado
	ultimo_frame_paso = -1; // Resetear al parar
}

// Reducir cooldown
if (contador_cooldown > 0) contador_cooldown -= 1;

// Al presionar T y no estar en cooldown
if (keyboard_check_pressed(ord("T")) && contador_cooldown <= 0) {
    contador_cooldown = cooldown_lanzar;
	
    // Crear el periódico
    var newspaper = instance_create_layer(x, y, "Instances", obj_throwPaper);
	
	// Ajustar posición inicial (evitar que aparezca dentro del jugador)
    newspaper.x = x - 20;  // Offset izquierdo
    newspaper.y = y;
	
	// Efecto de sonido
    audio_play_sound(snd_paper, 1, false);
}