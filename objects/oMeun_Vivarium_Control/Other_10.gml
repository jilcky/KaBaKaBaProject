if (live_call()) return live_result;
#region 解除处理的锁定
Order_Locking = false //锁定解除
#endregion
#region 执行指令部分

Button_Order[0] = "棉花"
Button_Order[1] = "牧场"
Button_Order[2] = "田"
Button_Order[3] = "亚麻"
Button_Order[4] = "蚕丝"

with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = sprite_add( "./Image/Background/4.png",0,0,0,0,0)
}

switch (Order_String) {
case "返回":
instance_create_depth(x,y,depth,oMeun_Main_Control);instance_destroy();

	break;


case "牧场":
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = sprite_add( "./Image/Background/5.png",0,0,0,0,0)
}
break;

case "田":
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = sprite_add( "./Image/Background/6.png",0,0,0,0,0)
}
break;

case "蚕丝":
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = sprite_add( "./Image/Background/7.png",0,0,0,0,0)
}
break;

case "亚麻":
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = sprite_add( "./Image/Background/8.png",0,0,0,0,0)
}
break;

case "棉花":
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = sprite_add( "./Image/Background/9.png",0,0,0,0,0)
}
break;

default:
	show_debug_message(string(Order_String) + "_指令未注册") 
	
	instance_create_depth(x,y,-1,self.object_index)
	
	instance_destroy(self,id)
	

sprite_delete(BG)

	
	break;
}
#endregion
