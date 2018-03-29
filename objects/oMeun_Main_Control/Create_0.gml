if (live_call()) return live_result;
Button_Order = 0
Button_Order[0] = "仓库"
Button_Order[1] = "工作室"
Button_Order[2] = "房间"
Button_Order[3] = "战场"
Button_Order[4] = "植物园"
Button_Order[5] = "城堡"
Button_Order[6] = "商店"
Button_Order[7] = "设置"

event_inherited();

show_debug_message("触发")


BG = sprite_add(working_directory+"./Image/Background/3.png",0,0,0,0,0)
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = other.BG
}