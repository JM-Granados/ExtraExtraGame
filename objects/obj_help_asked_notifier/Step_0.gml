/// @description Insert description here
// You can write your code in this editor

hspeed = v_speed

if (place_meeting(x, y, obj_temp_player)) {
	if (keyboard_check_pressed(ord("U")) || keyboard_check_pressed(ord("u"))) {
		// does receive help
		if (r < 0.5) {
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
			
			// The neighboor goes slower to answer the player
			neighbor.v_speed = -3.5
			v_speed = -3.5
		
			// "Im gonna stop this" dialog
			instance_create_layer(neighbor.x, neighbor.y, layer, obj_help_dialog)
			// After 3s the dialog is deleted 
			alarm[0] = room_speed * 3;
		
			// Confidence increases
			with (obj_confidence_manager) {
				obj_confidence_manager.confidence_score += 500
			}
		//does NOT receive help
		} else {
			// "Dont bother me" dialog
			instance_create_layer(neighbor.x, neighbor.y, layer, obj_dont_bother_me_dialog)
			// After 3s the dialog is deleted 
			alarm[0] = room_speed * 3;
			// Confidence decreases
			with (obj_confidence_manager) {
				current_confidence = obj_confidence_manager.confidence_score
				if(current_confidence - 150 > 0) {
					obj_confidence_manager.confidence_score -= 150
				} else {
					obj_confidence_manager.confidence_score = 0
				}
			}
		}
	}
}
