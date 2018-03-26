if (live_call()) return live_result;
var Map = All_Button_Index
var Size = array_length_1d(Button_Order);
next Size in {
	var map = DSmap_create();
	Map[? Button_Order[i]] = map; //载入按钮引索
	//精灵
	map[? "spr"] = Spr_Add(working_directory + "./Image/MeunButton/1.png")

	//坐标
	var h = sprite_get_height(map[? "spr"])+8;
	var w = sprite_get_width(map[? "spr"]);

	map[? "xstart"] = GameInfo.Width +1024 
	map[? "x"] = GameInfo.Width - w;
	map[? "y"] = h * i + GameInfo.Height - (Size * (h));

	map[? "ystart"] = map[? "y"];
	//id
	map[? "id"] = instance_create_depth(map[? "xstart"], map[? "ystart"], depth, oMeunButton) map[? "order"] = Button_Order[i];

	//设置按钮
	map[? "id"].sprite_index = map[? "spr"];
	map[? "id"].mask_index = map[? "spr"];
	map[? "id"].x = map[? "x"];
	map[? "id"].y = map[? "y"];
	map[? "id"].visible = false;
	map[? "id"].Control = self.id;
	map[? "id"].Order = Button_Order[i];
	map[? "id"].UseTween = true;

	TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "x", map[? "xstart"], map[? "x"]);
	TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "y", map[? "ystart"], map[? "y"]);

} //初化各种按钮