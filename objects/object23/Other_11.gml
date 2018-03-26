//让游戏菜单使用补间动画 倒带
if (live_call()) return live_result;
Order_Locking = true; //锁定解除
var Map = All_Button_Index
var Size = array_length_1d(Button_Order);
next Size in {
	var map = Map[? Button_Order[i]];
	tween = TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "x", map[? "x"], map[? "xstart"]);
	tween = TweenFire(map[? "id"], EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "y", map[? "y"], map[? "ystart"]);
}

cb = TweenAddCallbackUser(tween, TWEEN_EV_FINISH, id, 0);