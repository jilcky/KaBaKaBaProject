/// @description Insert description here
// You can write your code in this editor

enum GameInfo {
Height = 1080,
Width = 1920
}

RoomBack = room

#region PC的情况下 测试方便的调整
//if true//os_type = os_windows 
{
	var Size = 0.5
window_set_size(GameInfo.Width*Size,GameInfo.Height*Size)
window_set_position(1920/2-1280/2,1080/2-720/2)//只是单纯的让游戏画面在中间而已
}

#endregion

 //map_创建 初化都等于0
// 有设置文件 读取map 覆盖 对应的

 
 globalvar GameSetting;
GameSetting = ds_map_create();
 var map = GameSetting
 
 for (var i = 0; i < random(100); ++i) {
     map[?string(random(100))] = random(100)
 }
 
 
 //读取
	var fname = working_directory+"游戏设定"
  if file_exists(fname)
  {
	  var File = file_text_open_read(fname)
	  var Str = file_text_read_string(File)
	  file_text_close(File)
	  
	  var map = json_decode(Str)
	  

	var Size = ds_map_size(map)
	var key = ds_map_find_first(map)

	for (var i = 0; i < Size; ++i) {
	 
	 GameSetting[?key] = map[?key]
	 
	 show_debug_message(key)
	 
	 key = ds_map_find_next(map,key)
	}


	  
	
  }
  
	//写入
	  var File = file_text_open_write(fname)
	  var Str = json_encode(GameSetting)
	  file_text_write_string(File,Str)
	  file_text_close(File)
	  
	  
	

	show_message("gay")