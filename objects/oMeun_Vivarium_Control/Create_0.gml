if (live_call()) return live_result;
Button_Order = 0
Button_Order[0] = "棉花"
Button_Order[1] = "牧场"
Button_Order[2] = "田"
Button_Order[3] = "亚麻"
Button_Order[4] = "蚕丝"
Button_Order[5] = "返回"



event_inherited();

BG =  sprite_add( "./Image/Background/4.png",0,0,0,0,0)

with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = other.BG
}

