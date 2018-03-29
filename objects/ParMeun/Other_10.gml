if (live_call()) return live_result;
#region 解除处理的锁定
Order_Locking = false //锁定解除
#endregion
#region 执行指令部分
switch (Order_String) {
case "战场":
	// code here
	break;

default:
	show_debug_message(string(Order_String) + "_指令未注册") break;
}
#endregion

