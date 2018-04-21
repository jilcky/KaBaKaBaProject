
show_debug_message("借宿")

for (var i = 0; i < ds_list_size(Map_list); ++i) {
	show_debug_message(i)
     ds_map_destroy(Map_list[|i])
	 
}
//var key = ds_map_find_first(Spr_map)
//for (var i = 0; i < ds_map_size(Spr_map); ++i) {

//   sprite_delete(Spr_map[?key])
   
//   ds_map_find_next(Spr_map,key)
//}

ds_list_clear(Map_list)
