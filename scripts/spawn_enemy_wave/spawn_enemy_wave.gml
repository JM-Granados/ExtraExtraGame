function spawn_enemy_wave() {
    var spacing = 150;
    var start_y = 500;

    var hp_amount = 1 + floor(round_num / 2);
	show_debug_message("Enemy HP this wave: " + string(hp_amount));

	if (round_num mod 2 == 0) {
        global.bottle_speed += 2;
		global.throw_bottle_damage += 50;
		global.throw_body_damage += 50;
    }
	
    for (var i = 0; i < 3; i++) {
        var chosen_sprite = choose(spr_enemy_1, spr_enemy_2, spr_enemy_3, spr_enemy_4, spr_enemy_5);
        var enemy = instance_create_layer(0, start_y + i * spacing, "Enemy_instances", obj_enemy);

        enemy.sprite_index = chosen_sprite;
        enemy.image_xscale = 5;
        enemy.image_yscale = 5;
        enemy.x = -sprite_get_width(enemy.sprite_index) * enemy.image_xscale;
        enemy.hspeed = 3;

        enemy.hp = hp_amount; // Set HP
    }
}
