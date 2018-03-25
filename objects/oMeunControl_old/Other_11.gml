if (live_call()) return live_result;


#region 匹配指令

	var map = Button
	var key = ds_map_find_first(map)
	for (var i = 0; i < ds_map_size(map); ++i) {
	   
	   
	   
		var Mmap = map[?key]
		var ID = ds_map_find_value(Mmap,"id")
		
	   if ID = ButtonRunID
	   {
		   
		   ReturnOrd = key;
	   }
	   
	   key = ds_map_find_next(map,key)
	}
	
	show_debug_message(ReturnOrd)
	#endregion

#region 记录
ini_open(string(MeunFile)+"_备份")

        var w_Map = Button
        var w_Key = ds_map_find_first(w_Map)
        for (var a = 0; a < ds_map_size(w_Map); ++a) {    
            
            ini_write_string(a,"指令",w_Key)
            
                var map = Button[?w_Key]
                var key = ds_map_find_first(map)
                for(var i = 0;i<ds_map_size(Button[?w_Key]);i++)
                {
                    is_real(map[?key]){
                    ini_write_real(a,key,map[?key])
                    ini_write_real("VarInfo",key,false)
                    }
                    
                      is_string(map[?key]){
                    ini_write_string(a,key,map[?key])
                    ini_write_string("VarInfo",key,true)
                    }
                    
                 key = ds_map_find_next(map,key)   
                }
            
            w_Key = ds_map_find_next(w_Map,w_Key)
            
            
    }
     ini_write_real("Info","数量", ds_map_size(w_Map))
     ini_write_real("Info","版本",date_current_datetime())
    ini_close()		    
#endregion

#region 执行指令	
	#region 主菜单的
		if room = Room[?"主菜单"]
			switch (ReturnOrd) {
		  //  case "用户信息":
		  // room_goto(Room[?"用户信息"])
		
		  //      break;
			 // case "战斗":
    //                 room_goto(Room[?"战斗"])
		  //      break;
			  case "强化":
			
                 room_goto(Room[?"强化"])
		        break;
			 // case "仓库":
    //                 room_goto(Room[?"仓库"]);   
		  //      break;
		   
		        
		    default:
 
room_restart()		        // code here
		        break;
		}
	#endregion
	#region 用户信息的
		if room = Room[?"用户信息"]
			switch (ReturnOrd) {
		    case "返回":
		
		  room_goto(Room[?"主菜单"]);
		
		        break;
		    default:
		        // code here
		        break;
		}	
	#endregion
	#region 强化
		if room = Room[?"强化"]
			switch (ReturnOrd) {
		    case "返回":
		
		  room_goto(Room[?"主菜单"]);
		
		        break;
		    default:
		        // code here
		        break;
		}	
	#endregion
	#region 战斗
		if room = Room[?"战斗"]
			switch (ReturnOrd) {
		    case "返回":
		
		  room_goto(Room[?"主菜单"]);
		
		        break;
		    default:
		        // code here
		        break;
		}	
	#endregion
	#region 仓库
		if room = Room[?"仓库"]
			switch (ReturnOrd) {
		    case "返回":
		
		  room_goto(Room[?"主菜单"]);
		
		        break;
		    default:
		        // code here
		        break;
		}	
	#endregion
#endregion