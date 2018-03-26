//进行清理
#region 清理缓存 (map和精灵等)

//销毁按钮
var Key = ds_map_find_first(All_Button_Index) if true next ds_map_size(All_Button_Index) in {

	var map = All_Button_Index[? Key]

	with(map[? "id"]) {
		instance_destroy()
	}
	Key = ds_map_find_next(All_Button_Index, Key)
}

//清理map
next ds_list_size(All_Map_Index) in {
	ds_map_destroy(All_Map_Index[| i]);
}
//清理精灵
next ds_list_size(All_Spr_Index) in {
	sprite_delete(All_Spr_Index[| i]);
}
ds_list_destroy(All_Map_Index);
ds_list_destroy(All_Spr_Index);
ds_list_destroy(All_Tween_Index);#endregion