
//https://forum.gamemaker.io/index.php?threads/how-to-change-speed-of-background.90254/
function script_player_becomes_monster(){
	global.monster = true
	
	instance_destroy(obj_mailbox)
	
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
		house_x = -640
		house_roof_x = -1184
	}
/*
	with (obj_house) {
		v_speed = 4;
    
	}
	
	with(obj_house_roof){
		obj_house_manager.v_speed = 4
	}
*/

	with (obj_enemy) {
		instance_destroy();
	}
	
	var spacing = 150;
	var start_y = 400;

	var player_x = obj_bad_player.x; 

	for (var i = 0; i < 3; i++) {
	    var chosen_sprite = choose(spr_enemy_left_1, spr_enemy_left_2, spr_enemy_left_3, spr_enemy_left_4, spr_enemy_left_5);
	    var enemy = instance_create_layer(0, start_y + i * spacing, "Enemy_instances", obj_enemy);

	    enemy.sprite_index = chosen_sprite;
	    enemy.image_xscale = 5;
	    enemy.image_yscale = 5;

		
	    enemy.x = 1728 - (sprite_get_width(enemy.sprite_index) * enemy.image_xscale);
		
		instance_create_layer(enemy.x, enemy.y, "Enemy_instances", obj_enemy_puff)

	    enemy.hspeed = -4;
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
