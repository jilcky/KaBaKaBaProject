/// @description;
if (live_call()) return live_result;
    #region; //变量初化
    ButtonLockON = true//按钮触发上锁
    ButtonRunID = -4;//反馈按钮的id
    ReturnOrder = "";//反馈的指令
    ReturnTime = "";//反馈处理的时长
    MeunFile = ""; //读取的菜单布置文件
          #region 创建UI部件部分
        Button = ds_map_create();
        OrderList = ds_map_create();
        ButtonTween = ds_list_create()
        
        #endregion
    #endregion