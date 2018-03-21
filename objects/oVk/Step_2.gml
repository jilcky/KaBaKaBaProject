/// @description 同步坐标
x = camera_get_view_x(Camera) + Sx;
y = camera_get_view_y(Camera) + Sy;


if keyboard_check(vk_left)
{
	camera_set_view_pos(Camera,camera_get_view_x(Camera)+1,0)
}