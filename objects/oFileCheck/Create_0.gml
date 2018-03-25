


#region 从服务器获得一串 json 然后用这玩意 滚一遍 检查文件 
/*
#region 创建一个文件列表清单 


/*
//服务器 提供 
//对比

FileMap = ds_map_create()

ID = 0

for (var i = 0; i < 3; ++i) {
var type =  "位置"
FileMap[?string(ID)+"_"+string(type)] = "Image/Background/"+string(i)+".png"
var type =  "MD5"
FileMap[?string(ID)+"_"+string(type)] = md5_file(working_directory+ "Image/Background/"+string(i)+".png")
ID++
}


for (var i = 0; i < 10; ++i) {
var type =  "位置"
FileMap[?string(ID)+"_"+string(type)] = "Image/MeunButton/"+string(i)+".png"
var type =  "MD5"
FileMap[?string(ID)+"_"+string(type)] = md5_file(working_directory+ "Image/MeunButton/"+string(i)+".png")

ID++
}
FileMap[?"数量"] = ID 


 file = file_text_open_write(working_directory+"/File.txt")
file_text_write_string(file,json_encode(FileMap))
file_text_close(file)




#endregion

#region // 检查从文件位置里面读取出来 能否读取出来 

 file = file_text_open_read(working_directory+"/File.txt")
FileMap = json_decode( file_text_read_string(file))
ID = FileMap[?"数量"]
file_text_close(file)


FileMap2 = ds_map_create()

	var type =  "位置"
for (var i = 0; i < ID; ++i) {
   show_debug_message(file_exists(FileMap[?string(i)+"_"+string(type)] ))
   
   FileMap2[?FileMap[?string(i)+"_"+string(type)]] = md5_file((FileMap[?string(i)+"_"+string(type)]))
   
}


#endregion


 file = file_text_open_write(working_directory+"/File2.txt")
file_text_write_string(file,json_encode(FileMap2))
file_text_close(file)

*/
#endregion

//room_goto_next()

//
//if debug_mode
//directory_destroy(working_directory)

#macro next for(var i=0;i<
#macro in ;i+=1)

// 获取一串 关于文件位置和md5的json (代替品)
Mode = "获取File"

GetJSONMD5 = http_get("http://localhost/KaBaKaBa/JSONMd5.php")

GetJSONFile = -1

DownFile = ds_list_create()