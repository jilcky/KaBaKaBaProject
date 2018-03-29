if (live_call()) return live_result;
Button_Order = 0
Button_Order[0] = "返回"
event_inherited();




BGFIle[0] = working_directory+"./Image/Background/11.png"
BGFIle[1] = working_directory+"./Image/Background/12.png"
BGFIle[2] = working_directory+"./Image/Background/13.png"
BGFIle[3] = working_directory+"./Image/Background/14.png"

BGSelect = 0

BG = sprite_add(BGFIle[BGSelect],0,0,0,0,0)
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = other.BG
}