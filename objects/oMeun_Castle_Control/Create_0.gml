if (live_call()) return live_result;
Button_Order = 0
Button_Order[0] = "返回"
event_inherited();

BG = sprite_add(working_directory+"./Image/Background/10.png",0,0,0,0,0)
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = other.BG
}