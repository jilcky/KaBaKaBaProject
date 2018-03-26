var _Map  = argument0 ;
var Size = argument1;




var Key  = ds_map_find_first(_Map)
for (var i = 0; i < Size; ++i) {
	var _mmap = _Map[?Key]
	//show_debug_message("MapID_"+string(_mmap))
	


	if ds_list_find_index(All_Map_Index,_mmap) != -1 and !sprite_exists( _mmap) //Key != "spr"
	{
		//show_debug_message("Key_"+string(Key))
		
		show_debug_message(json_encode(_mmap))
		script180(_mmap,ds_map_size(_mmap))
	}
	else
	{
	
		show_debug_message("Key_"+string(Key)+"_Var_"+string(_mmap))
	}
	
	 Key  = ds_map_find_next(_Map,Key)
}