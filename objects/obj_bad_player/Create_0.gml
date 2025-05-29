/// @description Insert description here
// You can write your code in this editor

//MAPA
scale = 8
image_xscale = scale;
image_yscale = scale;


// Límites del mapa (ajusta según el tamaño de tu room)
limite_izquierdo = 625;          // Borde izquierdo de la pantalla
limite_derecho = room_width;   // Borde derecho de la room
limite_superior = 380;           // Borde superior
limite_inferior = 866; // Borde inferior

// Margen para evitar que el sprite se salga parcialmente
margen_sprite = 32; // Ajusta según el tamaño de tu sprite

// Velocidad del mapa
map_speed = -4;

global.paused = false

//Jugador
// Velocidad de movimiento
velocidad = 5;

anim_velocidad = 0.08

// Estado para controlar si se mueve o no
moviendo = false;

// Para rastrear última tecla horizontal
last_horizontal = "none";   
// Para rastrear última tecla vertical
last_vertical = "none";     

// Frames de espera entre lanzamientos
cooldown_lanzar = 30;  
contador_cooldown = 0;

// Frames donde el pie toca el suelo      
paso_frames = [1]; 
ultimo_frame_paso = -1; 


function array_contains(arr, value) {
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] == value) return true;
    }
    return false;
}



//Entregar periódico
