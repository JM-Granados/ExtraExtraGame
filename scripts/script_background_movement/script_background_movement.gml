
//https://forum.gamemaker.io/index.php?threads/how-to-change-speed-of-background.90254/
function script_player_becomes_monster(){
	var highway_layer_id = layer_get_id("Highway_full_background");
	var sidewalk_1_layer_id = layer_get_id("Sidewalk_background1");
	var sidewalk_2_layer_id = layer_get_id("Sidewalk_background2");
	var sky_layer_id = layer_get_id("Sky_background");


	layer_hspeed(highway_layer_id, 4)
	layer_hspeed(sidewalk_1_layer_id, 4)
	layer_hspeed(sidewalk_2_layer_id, 4)
	layer_hspeed(sky_layer_id, 4)
	
	
	with(obj_neighbor_manager){
		obj_neighbor_manager.help_frequency = 0
	}
	
	with(obj_house_manager){
		obj_house_manager.house_x = -640
		obj_house_manager.house_roof_x = -1184
	}
	
	with(obj_house){
		obj_house.v_speed = 4
	}
	
	with(obj_house_roof){
		obj_house_roof.v_speed = 4
	}
	
}

function script_background_regular_movement() {
    var highway_layer_id = layer_get_id("Highway_full_background");
    var sidewalk_1_layer_id = layer_get_id("Sidewalk_background1");
    var sidewalk_2_layer_id = layer_get_id("Sidewalk_background2");
    var sky_layer_id = layer_get_id("Sky_background");

	layer_hspeed(highway_layer_id, -4)
	layer_hspeed(sidewalk_1_layer_id, -4)
	layer_hspeed(sidewalk_2_layer_id, -4)
	layer_hspeed(sky_layer_id, -2)
}
