/// @description  draw_sprite_scale9(sprite, subImage, left, top, right, bottom)
/// @param sprite
/// @param  subImage
/// @param  left
/// @param  top
/// @param  right
/// @param  bottom

var w, h, sw, sh, top, left, bottom, right;

w = sprite_get_width(argument0);
h = sprite_get_height(argument0);
subImage = argument1;
sw = w/3;
sh = h/3;
left = argument2;
top = argument3;
right = argument4;
bottom = argument5;
mid_w = ((right - left)-(sw*2))/sw;
mid_h = ((bottom - top)-(sh*2))/sh;


// middle
draw_sprite_part_ext(argument0, subImage, sw*1, sh*1, sw, sh, left + sw, top + sh, mid_w, mid_h, c_white, image_alpha);
// top mid
draw_sprite_part_ext(argument0, subImage, sw*1, 0, sw, sh, left + sw, top, mid_w, 1, c_white, image_alpha);
// left mid
draw_sprite_part_ext(argument0, subImage, 0, sh*1, sw, sh, left, top + sh, 1, mid_h, c_white, image_alpha);
// right mid
draw_sprite_part_ext(argument0, subImage, sw*2, sh*1, sw, sh, right - sw, top + sh, 1, mid_h, c_white, image_alpha);
// bottom mid
draw_sprite_part_ext(argument0, subImage, sw*1, sh*2, sw, sh, left + sw, bottom - sh, mid_w, 1, c_white, image_alpha);

// top left
draw_sprite_part_ext(argument0, subImage, 0, 0, sw, sh, left, top, 1, 1, c_white, image_alpha);
// top right
draw_sprite_part_ext(argument0, subImage, sw*2, 0, sw, sh, right - sw, top, 1, 1, c_white, image_alpha);
// bottom left
draw_sprite_part_ext(argument0, subImage, 0, sh*2, sw, sh, left, bottom - sh, 1, 1, c_white, image_alpha);
// bottom right
draw_sprite_part_ext(argument0, subImage, sw*2, sh*2, sw, sh, right - sw, bottom - sh, 1, 1, c_white, image_alpha);
