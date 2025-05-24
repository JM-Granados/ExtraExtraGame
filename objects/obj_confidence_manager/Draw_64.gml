/// @description Insert description here
// You can write your code in this editor

if(confidence_score <= overconfidence_score){
	draw_set_font(fnt_pixel)
	draw_set_color(c_black);
	confidence_score_string = string(confidence_score)
	draw_text(370,965,confidence_score_string)
}
