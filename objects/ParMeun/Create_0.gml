
show_debug_message(object_get_name(self.object_index))

if (live_call()) return live_result;
#region  菜单按钮系列;
All_Map_Index = ds_list_create(); //在房间结束的时候集体清理用(结合 Dsmap_c 使用)
All_Spr_Index = ds_list_create();

All_Tween_Index = ds_list_create(); //补间动画引索


All_Button_Index = DSmap_create(); //按钮的引索
display_set_gui_size(1280  , 720);#region // 指令系列
Order_String = ""; //指令
Order_Locking = false; //锁定不执行
Order_Tweening = false; //执行期间
Order_TweenTime = 0.6; //执行补间的速度
Order_UseTween = false; //是否使用补间
Order_Mode = ""; //指令输入的类型
//Button_Order = 0; //指令列表 数组 创建的时候 塞进去

#endregion
#endregion

if (live_call()) return live_result;
var Map = All_Button_Index
var Size = array_length_1d(Button_Order);
if true next array_length_1d(Button_Order)  in {
	var map = DSmap_create();
	
	ds_map_add_map(Map,Button_Order[i],map)
	//Map[? Button_Order[i]] = map; 
	//载入按钮引索
	//精灵
	map[? "spr"] = Spr_Add(working_directory + "./Image/MeunButton/4.png")
	ds_list_add(All_Spr_Index,map[? "spr"] )
	//坐标
	var h = sprite_get_height(map[? "spr"]);
	var w = sprite_get_width(map[? "spr"]);

	map[? "xstart"] =GameInfo.Width +1024;
	map[? "x"] = GameInfo.Width - w;
	map[? "y"] = h * i + GameInfo.Height - (Size * h);

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
	map[? "id"].UseTween =false;
	map[? "id"].TapUse = true

    if 	map[? "id"].UseTween {
	TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, Order_TweenTime, "x", map[? "xstart"], map[? "x"]);
	TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, Order_TweenTime, "y", map[? "ystart"], map[? "y"]);
    }
    else
    {
        
    }
//	with(map[? "id"])
//{	
//Tween = 	TweenEasyMove(map[? "xstart"] ,map[? "ystart"] ,map[? "x"],map[? "y"],0,30,EaseInOutQuad)
// TweenAddCallbackUser(Tween, TWEEN_EV_FINISH, id, 1);
//}


	

} //初化各种按钮