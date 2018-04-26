All_Map_Index = ds_list_create(); //在房间结束的时候集体清理用(结合 Dsmap_c 使用)
All_Spr_Index = ds_list_create();

All_Tween_Index = ds_list_create(); //补间动画引索


All_Button_Index = DSmap_create(); //按钮的引索
<<<<<<< HEAD
<<<<<<< HEAD
display_set_gui_size(GameInfo.Width  , GameInfo.Width);
=======
display_set_gui_size(1280  , 720);
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
display_set_gui_size(1280  , 720);
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
//#region // 指令系列
Order_String = ""; //指令
Order_Locking = false; //锁定不执行
Order_Tweening = false; //执行期间
Order_TweenTime = 0.6; //执行补间的速度
Order_UseTween = false; //是否使用补间
Order_Mode = ""; //指令输入的类型
//Button_Order = 0; //指令列表 数组 创建的时候 塞进去
