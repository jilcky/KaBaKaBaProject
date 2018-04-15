if Mode = "开始对比"
{
    
    var file = file_text_open_read( "/FileJSON.txt")
    FileMap = json_decode( file_text_read_string(file))
    file_text_close(file)
    
    
    Key = ds_map_find_first(FileMap)
    //这是读取到的编号
    No = 0
    
    //要是检测没有就到这里读取
    NoFileMap = ds_map_create()
    
    //
    Mode = "对比清单"
    
    DownLock = true

}

//进行检查文件 把有差异的 文件名 挑选出来
if Mode = "对比清单"{
	if Key != undefined //ds_map_find_last(FileMap)
	{
	
	var Str = string(Key)+":"+string(FileMap[?Key])
	draw_set_color(c_white)
	draw_set_font(f64)
	draw_text(GameInfo.Width/2,GameInfo.Height/2,Str)
	

	//文件要是有缺失或者差异 重新下载 这里是预置的列表
	if file_exists(Key) //检测有无
	{
		if md5_file(Key) = FileMap[?Key]
		{
			
		}
		else
		{
		NoFileMap[?Key] = FileMap[?Key]
		}
	}
	else
    	{
    		NoFileMap[?Key] = FileMap[?Key]
    	}
	}
		else
	{
	    Mode = "下载差异"
	}
		Key = ds_map_find_next(FileMap,Key)
	}


if Mode = "下载差异"
{   
     var HTTP = "http://localhost/KaBaKaBa/"
     var Size = ds_map_size(NoFileMap)
     var _key = ds_map_find_first(NoFileMap)
     if  Size and DownLock  {
    for (var i = 0; i < Size; ++i)  {
		
   DownFile[|ds_list_size(DownFile)] =  http_get_file(HTTP+_key, _key)
    
    var _key = ds_map_find_next(NoFileMap,_key)
    }
        DownLock = false
     }
	 
	 
     if Size = 0
     {
         //结束这垃圾玩意 进入下一步
         Mode = "搞定了!"
		 
		 room_goto_next()
     }
}