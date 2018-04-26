

if (live_call()) return live_result;
switch (async_load[?"type"]) {
	#region 接入网络判断 失败继续
	  case network_type_non_blocking_connect:
       if  async_load[?"succeeded"] = true
	   {
		 D_Mode = "创建登陆器";
		event_user(1);
		AddMassage("接入服务器成功")
	   }
	   else
	   {
		 
		N_Mode = "开始接入服务器";
		event_user(0);  
		network_destroy( Client)
		AddMassage("接入服务器失败 重新接入")
		
	   }
        break;
	#endregion
	#region 处理指令
		case network_type_data:
		var BufferMap = ds_map_create()
		var _buffer = buffer_read(async_load[?"buffer"],buffer_string)
		ds_map_read(BufferMap,_buffer)
//		AddMassage("财宝内容"+string(BufferMap[?"携带信息"]))
		switch (BufferMap[?"指令"]) {
		    case "登陆":
		        if BufferMap[?"携带信息"] = true
				{
					AddMassage("登陆 成功")
					
					//登陆进入游戏;
					instance_destroy(Dialog);
					instance_destroy();
					instance_create(x,y,oMeun_Main_Control);
				}
			else
				{
					AddMassage("登陆 失败")
					with(Dialog)
					{
						uiShowDialog = true;
						uiFadeIn = true;
						uiValue = true;
					}
				}
		        break;
				
			 case "注册":
		        if BufferMap[?"携带信息"] = true
				{
					//loginGame = true
					AddMassage("注册 成功")
					uiShowDialog = true;
						uiFadeIn = true;
						uiValue = true;
				}
			else
				{
					AddMassage("注册 失败")
					with(Dialog)
					{
						uiShowDialog = true;
						uiFadeIn = true;
						uiValue = true;
					}
				}
		        break;
		}

	#endregion
		
}