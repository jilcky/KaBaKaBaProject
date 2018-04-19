if Type = oVk_Button_type.Tap and Order = "震动"
{
	var _True = instance_exists(o_ZD)
	
	
	if _True = false
	{
		instance_create_depth(x,y,depth+1,o_ZD)
	}
	
	if _True = true
	{
		with(o_ZD)
		{
			instance_destroy()
		}
	}
	
}

if Type = oVk_Button_type.Tap and Order = "对话"
{
	var _True = instance_exists(obj_textbox)
	
	
	if _True = false
	{
			with(o_player)
	{create_dialogue("这里展示播放一下对话内容 选择题部分触发部分没按到 安卓上 ", -1);}
	
	}
	
	if _True = true
	{
		with(obj_textbox)
		{
			instance_destroy()
		}
	}
	
}