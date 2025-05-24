
//Change when there is the logic of players' life
if(true) {

	var house_x = 1824
	var house_y = -96
	// The house roof spawns later to give the appearence of interleaved
	var house_roof_x = 2800
	var house_roof_y = 928
	
	instance_create_layer(house_x, house_y,layer, obj_house)
	instance_create_layer(house_roof_x, house_roof_y,layer, obj_house_roof)
	
	// This alarm is called every 6 seconds, so every 6 s appear a pair of houses
	alarm[0] = room_speed * 6
	
	
}