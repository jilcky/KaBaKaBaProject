
//重置游戏
if keyboard_check_pressed(ord("R")) and keyboard_check(vk_control)
{
	room_restart()
}


run = 1


//全屏
if keyboard_check(vk_alt) and keyboard_check_pressed(vk_enter)
{
	var W = window_get_fullscreen()
	W^=true
	window_set_fullscreen(W)
}

if room = rGameStart
{
	room_goto(room1)
}
