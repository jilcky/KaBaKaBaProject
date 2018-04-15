
if (live_call()) return live_result;

	//绘制立绘
		
	var map = All_Button_Index[? "立绘"]
	draw_set_color(c_white);	
	var _W = sprite_get_width(map[? "spr"]) /10
	var _H = sprite_get_height(map[? "spr"])/10
	draw_sprite_ext(map[? "spr"],0,map[? "id"].x, map[? "id"].y,0.5,0.5,0,c_white,1);
	


//绘制零件
if	ds_map_size(All_Button_Index)
{
var Key = ds_map_find_first(All_Button_Index) 

for (var i = 0; i <  ds_map_size(All_Button_Index) ; ++i) 
 {

	var map = All_Button_Index[? Key]
	

	
	 	if Key != "经验值" and Key != "立绘"
	draw_sprite(map[? "spr"], 0, map[? "id"].x, map[? "id"].y);
	
	draw_set_font(fText32);
	draw_set_color(c_black);
	draw_set_alpha(0.1)
	draw_text_transformed(map[? "id"].x, map[? "id"].y, map[? "order"], 1, 1, 0)
	draw_set_alpha(1)
	Key = ds_map_find_next(All_Button_Index, Key)
	
	//
	
}}

//绘制玩家的信息
if !variable_instance_exists(self,"PlayerInfo"){
PlayerInfo = ds_map_create()

PlayerInfo[?"食物"] = irandom(1000);
PlayerInfo[?"金币"] = irandom(1000);
PlayerInfo[?"钻石"] = irandom(1000);

PlayerInfo[?"用户名"] ="这是一个中文ID";
PlayerInfo[?"等级"] = irandom(100);
PlayerInfo[?"经验"] = irandom(1000);

}

// 

//3个数值
	var map = All_Button_Index[? "食物"]
	draw_set_color(c_white);
	draw_text(map[? "id"].x+56, map[? "id"].y, PlayerInfo[?"食物"] )
	
		var map = All_Button_Index[? "金币"]
	draw_set_color(c_white);
	draw_text(map[? "id"].x+56, map[? "id"].y, PlayerInfo[?"金币"])
	
		var map = All_Button_Index[? "钻石"]
	draw_set_color(c_white);
	draw_text(map[? "id"].x+56, map[? "id"].y, PlayerInfo[?"钻石"])
	
//左上角
		var map = All_Button_Index[? "玩家信息"]
	draw_set_color(c_black);
	draw_text(map[? "id"].x+56, map[? "id"].y,"LV:" +string(PlayerInfo[?"等级"]))
	draw_text(map[? "id"].x+56, map[? "id"].y+32+16, string(PlayerInfo[?"用户名"]))
	
	var map = All_Button_Index[? "经验值"]
	draw_set_color(c_white);	
	var _W = sprite_get_width(map[? "spr"]) *( PlayerInfo[?"经验"] /(PlayerInfo[?"等级"]*125))
	var _H = sprite_get_height(map[? "spr"])
	draw_sprite_part(map[? "spr"], 0, 0,0,_W,_H,map[? "id"].x, map[? "id"].y);
	
