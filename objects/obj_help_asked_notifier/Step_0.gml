/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

hspeed = v_speed;

if (place_meeting(x, y, obj_player)) {
    var enemy_count = instance_number(obj_enemy);
	
    if (enemy_count > 0) {
	    if ((keyboard_check_pressed(ord("U")) || keyboard_check_pressed(ord("u")))) {
			if (!neighbor.already_helped) {
		        // does receive help
		        if (r < 0.5) {
					neighbor.already_helped = true;
		            current_sprite = neighbor.sprite_index 
		            switch(current_sprite){
		                case spr_neighbor_side_1:
		                    neighbor.sprite_index = spr_neighbor_front_1
		                    break;
		                case spr_neighbor_side_2:
		                    neighbor.sprite_index = spr_neighbor_front_2
		                    break;
		                case spr_neighbor_side_3:
		                    neighbor.sprite_index = spr_neighbor_front_3
		                    break;
		                case spr_neighbor_side_4:
		                    neighbor.sprite_index = spr_neighbor_front_4
		                    break;
		                case spr_neighbor_side_5:
		                    neighbor.sprite_index = spr_neighbor_front_5
		                    break;
		            }

		            // The neighbor goes slower to answer the player
		            neighbor.v_speed = -3.5;
		            v_speed = -3.5;

		            // "I'm gonna stop this" dialog
		            instance_create_layer(neighbor.x, neighbor.y, layer, obj_help_dialog);
		            alarm[0] = room_speed * 3;

		            // Destroys an enemy
		            var random_enemy = instance_find(obj_enemy, irandom(enemy_count - 1));
		            with (random_enemy) {
		                instance_create_layer(x, y, layer, obj_puff);
		                instance_destroy();
		            }

		            // Confidence increases
		            with (obj_confidence_manager) {
		                obj_confidence_manager.confidence_score += 500;
		            }
		        } else {
		            // does NOT receive help
		            instance_create_layer(neighbor.x, neighbor.y, layer, obj_dont_bother_me_dialog);
		            alarm[0] = room_speed * 3;

		            with (obj_confidence_manager) {
		                current_confidence = obj_confidence_manager.confidence_score;
		                if (current_confidence - 150 > 0) {
		                    obj_confidence_manager.confidence_score -= 150;
		                } else {
		                    obj_confidence_manager.confidence_score = 0;
		                }
		            }
		        }
			}
	    }
	} else {
	    show_debug_message("No enemies present, no help triggered.");
	}
}