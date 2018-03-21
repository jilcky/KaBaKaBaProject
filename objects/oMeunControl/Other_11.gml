if (live_call()) return live_result;
show_debug_message(ReturnOrd)
//show_message(ReturnOrd)

#region 执行指令	
	#region 主菜单的
		if room = Room[?"主菜单"]
			switch (ReturnOrd) {
		    case "用户信息":
		   room_goto(Room[?"用户信息"])
		
		        break;
			  case "战斗":
                    room_goto(Room[?"战斗"])
		        break;
			  case "强化":
			
                 room_goto(Room[?"强化"])
		        break;
			  case "仓库":
                    room_goto(Room[?"仓库"]);   
		        break;
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