/// @description Insert description here
// You can write your code in this editor

// Velocidad de movimiento
velocidad = 5;

anim_velocidad = 0.4

// Estado para controlar si se mueve o no
moviendo = false;

last_horizontal = "none";   // Para rastrear última tecla horizontal
last_vertical = "none";     // Para rastrear última tecla vertical

cooldown_lanzar = 30;  // Frames de espera entre lanzamientos
contador_cooldown = 0;

paso_frames = [1]; // Frames donde el pie toca el suelo      
sonido_pisadas_activo = false;
ultimo_frame_paso = -1; 


function array_contains(arr, value) {
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] == value) return true;
    }
    return false;
}
