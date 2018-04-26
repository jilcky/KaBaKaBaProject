
/*
#region 摇杆


    sMap =  ds_map_create()
	sMap[?"底部"] = oGame.SprButton[9];
	sMap[?"摇杆"] = oGame.SprButton[5];
	
#region 调整素材中点
	var sp = sMap[?"底部"]
	if sprite_get_xoffset(sp) != sprite_get_width(sp)/2
	sprite_set_offset(sp,sprite_get_width(sp)/2,sprite_get_width(sp)/2)
	
	var sp = sMap[?"摇杆"]
	if sprite_get_xoffset(sp) != sprite_get_width(sp)/2
	sprite_set_offset(sp,sprite_get_width(sp)/2,sprite_get_width(sp)/2)
*/	
//	#endregion


MX = 320 //摇杆坐标
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
MY = GameInfo.Width-320
=======
MY = 720-320
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
MY = 720-320
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
MY = 1080-320
>>>>>>> parent of 145b83e... 手滑失败了
=======
MY = 1080-320
>>>>>>> parent of 145b83e... 手滑失败了
RY = 0;//摇杆偏移
RX = 0;

R = 160//半径
//#endregion