show_debug_message("滑动")


var OldSelect = BGSelect

if  event_data[?"diffX"] > 0 
{
BGSelect++
}

if  event_data[?"diffX"] < 0 
{
BGSelect--
}

BGSelect = min(BGSelect,array_length_1d(BGFIle)-1)
BGSelect = max(BGSelect,0)

if OldSelect != BGSelect
{
	BG = sprite_add(BGFIle[BGSelect],0,0,0,0,0)
	with(oDrawMeunBG)
	{
	sprite_delete(sprite_index)
	sprite_index = other.BG
	}
}