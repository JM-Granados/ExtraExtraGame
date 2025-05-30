/// @description Insert description here
// You can write your code in this editor


// Dibujar un rectángulo negro que cubra toda la pantalla
draw_set_alpha(fade_alpha);
draw_set_color(fade_color);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1); // Restaurar alpha

