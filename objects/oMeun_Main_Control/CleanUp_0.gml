if (live_call()) return live_result;
			for (var i = 0; i < ds_map_size(ButtonMap); ++i) {
				var _key = ButtonOrder[i]
				
				var ID = ds_map_find_value(ButtonMap,_key)
			
				instance_destroy(ID);
				
			}
	
	ds_map_destroy(ButtonMap)
	
	show_debug_message(string(object_get_name(object_index))+string(id)+":进行了清理")