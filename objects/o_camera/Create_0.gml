target_ = o_player;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
scale_ = width_ / view_get_wport(0);
show_debug_message(scale_);

x = lerp(x, target_.x, .1);
y = lerp(y, target_.y-8, .1);
x = round_n(x, scale_);
y = round_n(y, scale_);
x = clamp(x, width_/2 + CELL_WIDTH, room_width-width_/2 - CELL_WIDTH);
y = clamp(y, height_/2 + CELL_HEIGHT, room_height-height_/2 - CELL_HEIGHT);
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);

CY = camera_get_view_y(view_camera[0])