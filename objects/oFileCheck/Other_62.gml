//SeeMap(async_load,"下载成功?")

//获得JSON的MD5
if async_load[?"id"] = GetJSONMD5
{
    if ds_map_find_value(async_load, "status") == 0
    {
        JSONMD5 = async_load[?"result"]
        
        if !file_exists( "FileJSON.txt"){
            GetJSONFile = http_get_file("http://localhost/KaBaKaBa/FileJSON.txt", "FileJSON.txt")
            show_debug_message("JSON缺失")
        }
        else
        {
            if md5_file( "FileJSON.txt") = JSONMD5
            {
                 Mode = "开始对比"
            }
            else
            {
                 GetJSONFile = http_get_file("http://localhost/KaBaKaBa/FileJSON.txt", "FileJSON.txt")
                 show_debug_message("JSON有差异")
            }
        }
    }
    else
    {
        GetJSONMD5 = http_get("http://localhost/KaBaKaBa/JSONMd5.php")
    }
}


if async_load[?"id"] = GetJSONFile
{
     if ds_map_find_value(async_load, "status") == 0
     {
         var path = ds_map_find_value(async_load, "result")
         
         Mode = "开始对比"
         
         show_debug_message(md5_file(path))
     }
}

if ds_list_size(DownFile)
{
    next ds_list_size(DownFile) in
    {
          if ds_map_find_value(async_load, "status") == 0
          {
              //对比 缺失名单 开始剔除 
              var _key = ds_map_find_first(NoFileMap)
              
              //if file_exists(async_load[?"result"])
               //show_debug_message(md5_file(async_load[?"result"]))
              
             // if false
              for(var a = 0;a<ds_map_size(NoFileMap) ;a++) 
              {
                  //show_debug_message(NoFileMap[?_key])
               //  show_debug_message(md5_file(async_load[?"result"]))
                  
                  if NoFileMap[?_key] = md5_file(async_load[?"result"])
                  {
                      ds_map_delete(NoFileMap,_key)
                  }
                  else
                  {
                      show_debug_message(md5_file(async_load[?"result"]))
                  }
                  
                  _key = ds_map_find_next(NoFileMap,_key)
                  
                  
              }
             // ds_list_delete(DownFile,i)
          }
          else
          if ds_map_find_value(async_load, "status") == -1
          {
              //ds_list_delete(DownFile,i)
             if  is_undefined(async_load[?"result"])
            ds_list_add(DownFile,http_get_file(async_load[?"url"],async_load[?"result"]))
            
            //show_debug_message(async_load[?"result"])
          //
          //DownFile[|ds_list_size(DownFile)]  = http_get_file(async_load[?"url"],async_load[?"result"])
                
          }
    }
}