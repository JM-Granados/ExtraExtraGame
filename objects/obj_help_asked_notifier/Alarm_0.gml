/// @description Insert description here
// You can write your code in this editor


current_sprite = neighbor.sprite_index 
// returns the neighboor to its normal sprite
switch(current_sprite){
	case spr_neighbor_front_1:
		neighbor.sprite_index = spr_neighbor_side_1
		break;
	case spr_neighbor_front_2:
		neighbor.sprite_index = spr_neighbor_side_2
		break;
	case spr_neighbor_front_3:
		neighbor.sprite_index = spr_neighbor_side_3
		break;
	case spr_neighbor_front_4:
		neighbor.sprite_index = spr_neighbor_side_4
		break;
	case spr_neighbor_front_5:
		neighbor.sprite_index = spr_neighbor_side_5
		break;
}
// returns the neighboor to its normal speed, and so the notifier
neighbor.v_speed = -5
v_speed = -5

// delets the dialogs on the room
with (obj_help_dialog) {
    instance_destroy();
}

with (obj_dont_bother_me_dialog) {
    instance_destroy();
}


