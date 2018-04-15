
if (live_call()) return live_result;
//绘制零件
if	ds_map_size(All_Button_Index)
{
var Key = ds_map_find_first(All_Button_Index) 
if true next ds_map_size(All_Button_Index) in {

	var map = All_Button_Index[? Key]

	draw_sprite(map[? "spr"], 0, map[? "id"].x, map[? "id"].y);
	draw_set_font(fText32);
	draw_set_color(c_black);
	draw_text_transformed(map[? "id"].x, map[? "id"].y, map[? "order"], 1, 1, 0)

	Key = ds_map_find_next(All_Button_Index, Key)
}}