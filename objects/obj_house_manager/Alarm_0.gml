
if (global.paused) {
    exit; // Skip updating while paused
}

//Change when there is the logic of players' life
if(true) {
	tmp = instance_create_layer(house_x, house_y,layer, obj_house)
	instance_create_layer(house_roof_x, house_roof_y,layer, obj_house_roof)
	
	show_debug_message("House created at " + string(tmp.v_speed));
	
	var r = random(1)
	// 50% of probability of a mailbox 
	if(r < 0.5 && !global.monster){
		instance_create_layer(mailbox_x, mailbox_y, "Mailbox_Instances", obj_mailbox)
	}
	
	// This alarm is called every 6 seconds, so every 6 s appear a pair of houses
	alarm[0] = room_speed * 6
	
	
}