if  allowTouch and mode = oVk_Button_type.Filck
{
    allowTouch = false;
    
    // Tween image scale
	
    tween = TweenFire(id, EaseOutCubic, 1, true, 0.0, 0.1,
		"y", y,y+128);    
    
	// Tween image alpha
    TweenFire(id, EaseOutCubic, 1, true, 0.0, 0.1,
		"image_alpha", image_alpha, 0.5);

	
	// Call user event 0 when tween finishes -- resets "allowTouch"
	TweenAddCallbackUser(tween, TWEEN_EV_FINISH, id, 15);
	//TweenAddCallbackUser(tween, TWEEN_EV_FINISH, id, 14);
	
}

/*
var key = ds_map_find_first(event_data)
for (var i = 0; i < ds_map_size(event_data); ++i) {
	show_debug_message(string(key)+":"+string(event_data[?key]))
	key = ds_map_find_next(event_data,key)
}
*/