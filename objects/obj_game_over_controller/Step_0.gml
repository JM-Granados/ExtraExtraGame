/// @description Insert description here
// You can write your code in this editor

if (obj_confidence_manager.confidence_score == 0){
    global.game_over = true;
}

if (global.game_over = true){
	audio_stop_sound(snd_game);

	audio_play_sound(snd_game_over, 1, true);
    
	room_goto(rm_game_over);
}


