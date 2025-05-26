
if (global.paused) {
    exit; // Skip updating while paused
}

//Change when there is the logic of players' life
if(true) {
	instance_create_layer(house_x, house_y,layer, obj_house)
	instance_create_layer(house_roof_x, house_roof_y,layer, obj_house_roof)
	
	// This alarm is called every 6 seconds, so every 6 s appear a pair of houses
	alarm[0] = room_speed * 6
	
	
}