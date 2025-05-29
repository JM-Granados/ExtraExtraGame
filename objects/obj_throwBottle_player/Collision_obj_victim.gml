/// @description Insert description here
// You can write your code in this editor

// Trigger red flash
other.is_hit = true;
other.hit_timer = room_speed / 2; // Half a second (30 frames if room_speed is 60)

audio_play_sound(snd_hurt, 1, false);
audio_play_sound(snd_bottle, 1, false);
audio_play_sound(snd_ouch, 1, false);

instance_destroy(); // destroy the paper
