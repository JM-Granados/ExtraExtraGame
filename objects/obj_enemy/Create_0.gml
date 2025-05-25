// Set a random throw timer in frames (room_speed = frames per second)
throw_timer = irandom_range(room_speed * 3, room_speed * 6); // 3 to 6 seconds
// obj_enemy - Create Event
hp = 1;
// Assign a random sprite from the 5 available enemy sprites
sprite_index = choose(spr_enemy_1, spr_enemy_2, spr_enemy_3, spr_enemy_4, spr_enemy_5);
is_hit = false;
hit_timer = 0;