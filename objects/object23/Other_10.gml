if (live_call()) return live_result;#region解除处理的锁定Order_Locking = false //锁定解除
#endregion#region执行指令部分
switch (Order_String) {
case "战场":
	// code here
	break;

default:
	show_debug_message(string(Order_String) + "_指令未注册") break;
}
#endregion