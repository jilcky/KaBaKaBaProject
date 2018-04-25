depth = 1000

var  _X = camera_get_view_x(view_camera[0])
var _Y = camera_get_view_y(view_camera[0])



draw_sprite_ext(__234,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),0.7,0.7,0,c_white,1)

draw_set_color(c_black)
draw_set_alpha(0.3)
draw_rectangle(_X,_Y,_X+1920,_Y+1080,false)
draw_set_alpha(1)

T+=0.5
draw_sprite(cloud6,0,_X+32+T, _Y+32)

T2+=1
draw_sprite(cloud5,0,_X+256+T2, _Y+48)

if T> camera_get_view_width(view_camera[0])+ sprite_get_width(cloud6)
T = -sprite_get_width(cloud6)

if T2> camera_get_view_width(view_camera[0])+ sprite_get_width(cloud5)
T2 = -sprite_get_width(cloud5)