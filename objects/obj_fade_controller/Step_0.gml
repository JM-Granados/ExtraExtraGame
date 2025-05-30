/// @description Insert description here
// You can write your code in this editor


// Fade-out (oscurecer)
if (fade_mode == "out" && !fade_complete) {
    fade_alpha += fade_speed;
    
    if (fade_alpha >= 1) {
        fade_complete = true;
        
        // Cambiar a room destino si está especificada
        if (target_room != -1) {
            room_goto(target_room);
        }
    }
}

// Fade-in (aclarar)
if (fade_mode == "in" && !fade_complete) {
    fade_alpha -= fade_speed;
    
    if (fade_alpha <= 0) {
        fade_complete = true;
        instance_destroy(); // Destruir al completar fade-in
    }
}

