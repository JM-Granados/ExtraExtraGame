other.hp -= 1;

// Trigger red flash
other.is_hit = true;
other.hit_timer = room_speed / 2; // Half a second (30 frames if room_speed is 60)

if (other.hp <= 0) {
    instance_create_layer(other.x, other.y, "Enemy_instances", obj_puff);
    with (other) instance_destroy();
        with(obj_confidence_manager){
        obj_confidence_manager.confidence_score += 100 
    }
}

audio_play_sound(snd_hurt, 1, false);

instance_destroy(); // destroy the paper
