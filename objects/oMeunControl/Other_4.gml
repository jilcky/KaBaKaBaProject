if (live_call()) return live_result;

Gay = ""

MeunFile = ""

    TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"BlackTime",0.5,0);
	TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 3 ,"Size",0,100);

if room =  Room[?"主菜单"]{
	MeunFile = "./菜单布置/主菜单.ini"
}

if room = Room[?"用户信息"]{
	MeunFile = "./菜单布置/用户信息.ini";
	Size = 0
	TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 3 ,"Size",0,100);

}
if room =  Room[?"强化"]{
	MeunFile = "./菜单布置/强化.ini"
}
if room = Room[?"仓库"]{
	MeunFile = "./菜单布置/仓库.ini"
}
if room =  Room[?"战斗"]{
	MeunFile = "./菜单布置/战斗.ini"
}

window_set_caption(MeunFile)

Sprite = ds_map_create()
Button = ds_map_create()
TweenList = ds_list_create()
		
	
if file_exists(MeunFile) {

#region 加载素材和布置按钮

		
	ini_open(MeunFile)
	
	Size = ini_read_real("Info","数量",0)
	
	for (var i = 0; i < Size; ++i) {
		var X = ini_read_real(i,"x",0)
		var Y = ini_read_real(i,"y",0)
		
		var CX = ini_read_real(i,"Cx",0)
		var CY = ini_read_real(i,"Cy",0)
		
		var sp = ini_read_string(i,"图片","")
		var Ord = ini_read_string(i,"指令","")
		
		
		Sprite[?Ord] = sprite_add(working_directory+sp,0,0,0,0,0)
		
		Button[?Ord] = ds_map_create()
		
		var map = Button[?Ord]
		
		map[?"id"] =  instance_create_depth(X,Y,0,oMeunButton)
		map[?"id"].sprite_index = Sprite[?Ord]
		map[?"id"].mask_index = Sprite[?Ord]
		
		map[?"x"] = X;
		map[?"y"] = Y;
		map[?"Cx"] = CX;
		map[?"Cy"] = CY;

		var ID = map[?"id"]
 TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"x",CX,X)
 TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5 ,"y",CY,Y)
		
	}
	
	ini_close()


#endregion

}