/// @description Insert description here
// You can write your code in this editor

//Change when there is the logic of players' life
if(true) {
	// Neighbor's spawn position 
	var neighbor_x = 1920
	var neighbor_y = 256

	// this random number to decide on wich sidewalk the neigbor should spawn
	var r = random(1); 
	var neighbor

	if (r < 0.5) {
	   neighbor = instance_create_layer(neighbor_x, neighbor_y, layer, obj_neighbor);
	} else {
	   neighbor = instance_create_layer(neighbor_x, neighbor_y + 485, layer, obj_neighbor);
	}
	
	// random sprite for each neighbor
	neighbor.sprite_index = choose(spr_neighbor_side_1, spr_neighbor_side_2, spr_neighbor_side_3,
									spr_neighbor_side_4, spr_neighbor_side_5);
			
	// A notifier is attached to identify when the player asks for help
	notifier = instance_create_layer(neighbor_x, 384, layer, obj_help_asked_notifier);
	notifier.neighbor = neighbor

	// This event is called every help_frequency seconds
	alarm[0] = room_speed * help_frequency
}

