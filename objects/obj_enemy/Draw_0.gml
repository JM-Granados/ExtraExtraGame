if (is_hit) {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, 1);
    gpu_set_blendmode(bm_normal);
} else {
    draw_self();
}
