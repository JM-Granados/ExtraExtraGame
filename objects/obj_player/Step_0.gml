/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

moviendo = false;

//Chequear qué tecla se presiona
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));

//Lomites de movimiento
// Aplicar límites horizontales
if (x < limite_izquierdo + margen_sprite) {
    x = limite_izquierdo + margen_sprite;
} 
else if (x > limite_derecho - margen_sprite) {
    x = limite_derecho - margen_sprite;
}

// Aplicar límites verticales
if (y < limite_superior + margen_sprite) {
    y = limite_superior + margen_sprite;
} 
else if (y > limite_inferior - margen_sprite) {
    y = limite_inferior - margen_sprite;
}


//Registrar movimientos
// Actualizar última tecla presionada en cada eje
//Ejes verticales
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

//Ejes horizontales
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
else {
	x -= map_speed;
}


// Prioridad: Si hay movimiento en ambos ejes, mostrar dirección horizontal
if (last_horizontal != "none" && last_vertical != "none") {
    sprite_index = (last_horizontal == "left") ? spr_main_walk_left : spr_main_walk_right;
}
else if (last_horizontal == "none" && moviendo == false) {
    sprite_index = spr_main_walk_left; // O usa un sprite específico para "ser empujado"
}


// Animación y sonido
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

//Disparar periódico
// Reducir cooldown
if (contador_cooldown > 0) contador_cooldown -= 1;

// Al presionar T y no estar en cooldown
if (keyboard_check_pressed(ord("T")) && contador_cooldown <= 0) {
    contador_cooldown = cooldown_lanzar;
	
    // Crear el periódico
    var newspaper = instance_create_layer(x, y, "House_instances", obj_throwPaper);
	
	newspaper.entrega = false
	newspaper.direccion = 180;      // 180 grados = izquierda
    newspaper.velocidad = 15;       // Velocidad rápida
    newspaper.rotacion = -15;       // Rotación antihoraria
	
	// Ajustar posición inicial (evitar que aparezca dentro del jugador)
    newspaper.x = x - 20;  // Offset izquierdo
    newspaper.y = y;
	
	// Efecto de sonido
    audio_play_sound(snd_paper, 1, false);
}


// Al presionar Y y no estar en cooldown
if (keyboard_check_pressed(ord("Y")) && contador_cooldown <= 0) {
    contador_cooldown = cooldown_lanzar;
	
    // Crear el periódico
    var newspaper = instance_create_layer(x, y, "House_instances", obj_throwPaper);
	
	newspaper.entrega = true
	newspaper.direccion = 90;      // 180 grados = izquierda
    newspaper.velocidad = 8;       // Velocidad rápida
    newspaper.rotacion = -8;       // Rotación antihoraria
	
	// Ajustar posición inicial (evitar que aparezca dentro del jugador)
    newspaper.x = x;  // Offset izquierdo
    newspaper.y = y - 20;
	
	sonido = audio_play_sound(snd_deliver, 1, false); // Sonido en loop
	distancia_total = y - 350; // Distancia a recorrer (ajusta si lanzas desde otra posición)
	duracion_sonido = (distancia_total / 8) / room_speed; // Duración en segundos
	// Ajustar velocidad de reproducción para que coincida con el tiempo de movimiento
	audio_sound_pitch(sonido, audio_sound_length(snd_deliver) / duracion_sonido);
	
}