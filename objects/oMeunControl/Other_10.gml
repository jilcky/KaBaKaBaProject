///处理按钮反馈指令	

if (live_call()) return live_result;

GayIN = ""


#region 匹配指令

	var map = Button
	var key = ds_map_find_first(map)
	for (var i = 0; i < ds_map_size(map); ++i) {
	   
	   
	   
		var Mmap = map[?key]
		var ID = ds_map_find_value(Mmap,"id")
		
	   if ID = ButtonRunID
	   {
		   
		   ReturnOrd = key;
	   }
	   
	   key = ds_map_find_next(map,key)
	}
	
	show_debug_message(ReturnOrd)
	#endregion
	
#region 播放动画
		var key = ds_map_find_first(Button)
	size = ds_map_size(Button)
	for (var i = 0; i < size; ++i) {
	  	var map = Button[?key]
		
		TweenFire(map[?"id"] , EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"x",map[?"x"] ,		map[?"Cx"] )
		TweenFire(map[?"id"] , EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"y",map[?"y"] ,		map[?"Cy"] )
		key = ds_map_find_next(Button,key)
		//show_debug_message(233)

	}
	#endregion

//RetunButtonOrder = -1;	
 RetunButtonOrder = TweenFire(self, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"x",x,x);
 TweenAddCallbackUser(RetunButtonOrder, TWEEN_EV_FINISH, self, 1);	
 TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"BlackTime",BlackTime,0.5);