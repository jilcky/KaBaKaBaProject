	///0	指令
	//1		精灵
	//2			x
	//3			y
	
	
	//精灵
	var map = DSmap_create();
	map[? "spr"] = Spr_Add(argument1)
	
	show_debug_message(string(argument0)+"_精灵加载_"+string(map[? "spr"]) )
	
	
	var Map = All_Button_Index
	ds_map_add_map(Map,argument0,map)
	
	
	ds_list_add(All_Spr_Index,map[? "spr"] )
	//坐标
	var h = sprite_get_height(map[? "spr"]);
	var w = sprite_get_width(map[? "spr"]);

	map[? "xstart"] =GameInfo.Width +1024;
	map[? "x"] =argument2
	map[? "y"] =argument3

	map[? "ystart"] = map[? "y"];
	//id
	map[? "id"] = instance_create_depth(map[? "xstart"], map[? "ystart"], depth, oMeunButton) map[? "order"] = argument0;

	//设置按钮
	map[? "id"].sprite_index = map[? "spr"];
	map[? "id"].mask_index = map[? "spr"];
	map[? "id"].x = map[? "x"];
	map[? "id"].y = map[? "y"];
	map[? "id"].visible = false;
	map[? "id"].Control = self.id;
	map[? "id"].Order =  argument0;
	map[? "id"].UseTween =false;
	map[? "id"].TapUse = true

    if 	map[? "id"].UseTween {
	TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, Order_TweenTime, "x", map[? "xstart"], map[? "x"]);
	TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, Order_TweenTime, "y", map[? "ystart"], map[? "y"]);
    }
    else
    {
        
    }
	
	return map