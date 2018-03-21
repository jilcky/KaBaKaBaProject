var map = event_data
var Key = ds_map_find_first(map)
var h = string_height(Key)
for (var i = 0; i < ds_map_size(map); ++i) {
	Date[?Key] = map[?Key]
	Key = ds_map_find_next(map,Key)
}



var w = sprite_get_width(sprite_index);
var h = sprite_get_height(sprite_index);

for (var a = 0; a < aSize  ; ++a) {
    for (var b = 0; b < bSize  ; ++b) {
		with(Button[a,b])
		{
			y+=other.Date[?"guidiffY"]
			y = min(y,ystart+256)
			y = max(y,-other.PartHight + ystart- 256)
		}
	}
}

for (var a = 0; a < aSize  ; ++a) {
    for (var b = 0; b < bSize  ; ++b) {
		if TweenExists(Tween[a,b])	
		if TweenIsPlaying(Tween[a,b])	
		{TweenStop(Tween[a,b])}
	}
}