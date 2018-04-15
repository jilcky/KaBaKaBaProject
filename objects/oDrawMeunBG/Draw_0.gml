//背景
//draw_sprite(BG_00,0,0,0)
////外圈
//var X = GameInfo.Width/2
//var Y = GameInfo.Height/2
//draw_sprite_ext(BG_01,0,X,Y,1,1,rot0,c_white,1)
////内圈
//draw_sprite_ext(BG_02,0,X,Y,1,1,rot1,c_white,1)


//draw_set_color(c_white)
//draw_text(256,256,room_get_name(room))

if sprite_exists(sprite_index)
{
var Size = 1280/sprite_get_width(sprite_index)
draw_sprite_ext(sprite_index,0,0,0,Size,Size,0,c_white,1
)}