// Vertical spacing between enemies
var spacing = 150;
var start_y = 500;

// Spawn 3 enemies
for (var i = 0; i < 3; i++) {
    // Choose a random sprite first
    var chosen_sprite = choose(spr_enemy_1, spr_enemy_2, spr_enemy_3, spr_enemy_4, spr_enemy_5);

    // Create the enemy (position will be fixed after scaling)
    var enemy = instance_create_layer(0, start_y + i * spacing, "Enemy_instances", obj_enemy);

    // Set sprite before scaling
    enemy.sprite_index = chosen_sprite;

    // Scale it
    enemy.image_xscale = 5;
    enemy.image_yscale = 5;

    // Move it offscreen using *actual* scaled sprite width
    enemy.x = -sprite_get_width(enemy.sprite_index) * enemy.image_xscale;

    // Set speed
    enemy.hspeed = 3;
}
