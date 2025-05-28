/// @description Insert description here
// You can write your code in this editor

if (global.paused) {
    exit; // Skip updating while paused
}

if instance_exists(obj_player) {
	if(confidence_score > overconfidence_score && !obj_player.transformed){
		obj_player.transformed = true;
	
		with(obj_confidence_counter_label){
			instance_destroy();
		}

		instance_create_layer(0, 916, layer, obj_overconfidence)
		show_debug_message("¡El jugador se convirtió en monstruo!");
	
		instance_destroy(obj_player);
        
        // Crear nuevo jugador/monstruo en misma posición
        var new_player = instance_create_layer(1484, 683, "House_instances", obj_bad_player);
    
		script_player_becomes_monster();
	}
}


