/// @description Insert description here
// You can write your code in this editor

#region 读取文件并且绘制

show_debug_message("检查 内含文件")
if  file_exists(working_directory+"MeunButton/10.png")
{
show_debug_message("检查 内含文件 成功")

	show_debug_message("进行拷贝")
	file_copy(working_directory+"MeunButton/10.png",working_directory+"Gay/CB.png")
	
		show_debug_message("检测拷贝文件")
	if  file_exists(working_directory+"Gay/CB.png")
	{
			show_debug_message("检测拷贝文件 _成功")
			
				show_debug_message("根据子串找文件")
			File = get_string("文件名","Gay/CB.png")
			
			if file_exists(working_directory+File)
			{
						show_debug_message("检测成功")

						SPR = sprite_add(working_directory+File,0,0,0,0,0)
			}
	}
}


#endregion

