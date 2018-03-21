var map = event_data
show_debug_message("F")

var Key = ds_map_find_first(map)
var h = string_height(Key)
for (var i = 0; i < ds_map_size(map); ++i) {
	Date[?Key] = map[?Key]
	Key = ds_map_find_next(map,Key)
}

//1.考虑无效坐标

var w = sprite_get_width(sprite_index);
var h = sprite_get_height(sprite_index);

for (var a = 0; a < aSize  ; ++a) {
    for (var b = 0; b < bSize  ; ++b) {
		
			
			var ID = Button[a,b];
			var Y= ID.y + other.Date[?"guidiffY"]*3
			Y = min(Y,ID.ystart + 256)
			Y = max(Y,-other.PartHight + ID.ystart - 256)
			
		//if TweenExists(Tween[a,b])	
		//if TweenIsPlaying(Tween[a,b])	
		//{TweenStop(Tween[a,b])}
		
		Tween[a,b] = TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"y",ID.y,Y);
		
		
	}

}

	
	SelfTween = TweenFire(id, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"y",y,y);
	TweenAddCallbackUser(SelfTween, TWEEN_EV_FINISH, id, 1);