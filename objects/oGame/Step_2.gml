
//重置游戏
if keyboard_check_pressed(ord("R")) and keyboard_check(vk_control)
{
	room_restart()

//room_goto_next()
}


run = 1


////全屏
//if keyboard_check(vk_alt) and keyboard_check_pressed(vk_enter)
//{
//	var W = window_get_fullscreen()
//	W^=true
//	window_set_fullscreen(W)
//}
//var i = 0;
//if ds_list_size(Map_list)
//{
//ds_map_destroy(Map_list[|i])
//ds_list_delete(Map_list,0)
//}

//if ds_list_size(List_list)
//{
//ds_list_destroy(List_list[|i])
//ds_list_delete(List_list,0)
//}

//if ds_list_size(Spr_list)
//{
//sprite_delete(Spr_list[|i])
//ds_list_delete(Spr_list,0)
//}