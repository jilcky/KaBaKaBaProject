draw_set_font(fText42)
draw_set_color(c_red)
//for (var i = ds_list_size(Debug); i > 1 ; i--) {
//    draw_text(128,i*32,Debug[|ds_list_size(Debug)-i])
//}

var Key = ds_map_find_first(Date)
if Key!=undefined{
var h = string_height(Key)
for (var i = 0; i < ds_map_size(Date); ++i) {
	draw_set_color(c_red)
    draw_text(0,i*h,string(Key)+":"+string(ds_map_find_value(Date,Key)))
	Key = ds_map_find_next(Date,Key)
}}