if (live_call()) return live_result;
#region 解除处理的锁定
Order_Locking = false //锁定解除
#endregion
#region 执行指令部分
if false
switch (Order_String) {
case "战场":
	// code here
	break;

default:
	show_debug_message(string(Order_String) + "_指令未注册") 
	
	
	
	
	break;
	
}
#endregion
if ds_map_exists(Meun_Index,Order_String)
{
	instance_create_depth(x,y,-1,Meun_Index[?string(Order_String)])
	
	window_set_caption(string(Order_String))
}
else
{
	instance_create_depth(x,y,-1,self.object_index)
	
		show_debug_message(string(Order_String) + "_指令未注册") 
}

	sprite_delete(BG)

instance_destroy(self,id)