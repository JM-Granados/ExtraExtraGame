// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_enemy_wave(){
	var spacing = 150;
	var start_y = 500;

	for (var i = 0; i < 3; i++) {
	    var chosen_sprite = choose(spr_enemy_1, spr_enemy_2, spr_enemy_3, spr_enemy_4, spr_enemy_5);
	    var enemy = instance_create_layer(0, start_y + i * spacing, "Enemy_instances", obj_enemy);

	    enemy.sprite_index = chosen_sprite;
	    enemy.image_xscale = 5;
	    enemy.image_yscale = 5;
	    enemy.x = -sprite_get_width(enemy.sprite_index) * enemy.image_xscale;
	    enemy.hspeed = 3;
	}
}