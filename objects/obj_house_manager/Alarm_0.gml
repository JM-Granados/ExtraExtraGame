/// @description Insert description here
// You can write your code in this editor


//Change when there is the logic of players' life
if(true) {

	var house_x = 1824
	var house_y = -96
	var house_roof_x = 2500
	var house_roof_y = 928
	
	instance_create_layer(house_x, house_y,layer, obj_house)
	instance_create_layer(house_roof_x, house_roof_y,layer, obj_house_roof)
	
	alarm[0] = room_speed * 4
	
	
}