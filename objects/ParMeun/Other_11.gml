//让游戏菜单使用补间动画 倒带
if (live_call()) return live_result;

if Order_Locking = false{
Order_Locking = true; //锁定解除
var Map = All_Button_Index
var Size = array_length_1d(Button_Order);
next Size in {
	
	var map = Map[? Button_Order[i]];
	if  ds_map_exists(map,"id") and instance_exists(map[? "id"])
	{
//			with(map[? "id"])
//{	
	
//	 TweenEasyMove(map[? "x"] ,map[? "y"] ,map[? "xstart"],map[? "ystart"],0,30,EaseInOutQuad)}
//	 TweenAddCallbackUser(Tween, TWEEN_EV_FINISH, id, 15);
//	 TweenAddCallbackUser(Tween, TWEEN_EV_FINISH,Control,0);

	tween = TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, Order_TweenTime, "x", map[? "x"], map[? "xstart"]);
	tween = TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, Order_TweenTime, "y", map[? "y"], map[? "ystart"]);	}
}

cb = TweenAddCallbackUser(tween, TWEEN_EV_FINISH, id, 0);

with(oMeunButton)
{
TapUse = false
}

}