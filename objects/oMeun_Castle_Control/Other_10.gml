if (live_call()) return live_result;
#region 解除处理的锁定
Order_Locking = false //锁定解除
#endregion
#region 执行指令部分
switch (Order_String) {
case "返回":
instance_create_depth(x,y,depth,oMeun_Main_Control);instance_destroy();

	break;

default:
	show_debug_message(string(Order_String) + "_指令未注册") 
	
	instance_create_depth(x,y,-1,self.object_index)
	
	instance_destroy(self,id)
	
	break;
}
#endregion

sprite_delete(BG)

instance_destroy(self,id)