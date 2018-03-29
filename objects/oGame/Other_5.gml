
show_debug_message("借宿")

for (var i = 0; i < ds_list_size(Map_list); ++i) {
	show_debug_message(i)
     ds_map_destroy(Map_list[|i])
	 
}

for (var i = 0; i < ds_list_size(Spr_list); ++i) {
	show_debug_message(i)
   sprite_delete(Spr_list[|i])
}

	ds_list_clear(Map_list)
	ds_list_clear(Spr_list)