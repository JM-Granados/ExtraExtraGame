/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

if(confidence_score > overconfidence_score){
	with(obj_confidence_counter_label){
		instance_destroy();
	}

	instance_create_layer(0, 916, layer, obj_overconfidence)
}


