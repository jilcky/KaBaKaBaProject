    if (live_call()) return live_result;
    //读取后开始加载 部件
    if file_exists(MeunFile)
    {ini_open(MeunFile);
        var i = 0
        while(ini_section_exists(i))
        {
            Button[?ini_read_string(i,"指令","缺失指令_"+string(i))] = ds_map_create()
            var map = Button[?"指令"]
            map[?"id"] =   instance_create_depth(xx,yy,depth,oMeunButton)
            map[?"图片位置"] = ini_read_string(i,"图片位置","缺失指令_"+string(i))
            map[?"精灵"] = "gay"
            
            
            i++
        }
    
    
    
     ini_close()
    }