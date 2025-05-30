/// @description Insert description here
// You can write your code in this editor

if (!other.delivered && !other.destroyed) {
    with (obj_confidence_manager) {
        confidence_score -= 100;
        confidence_score = max(confidence_score, 0); // Evitar valores negativos
    }
    other.destroyed = true; // Marcar como destruida

	audio_play_sound(snd_undelivered, 1, false);
}


instance_destroy(other)