if (live_call()) return live_result;
Button_Order = 0
Button_Order[0] = "音效+"
Button_Order[1] = "音效-"
Button_Order[2] = "人声+"
Button_Order[3] = "人声-"
Button_Order[4] = "背景乐+"
Button_Order[5] = "背景乐-"
Button_Order[6] = "返回"

//event_inherited();

Button_Info()


// "返回"
var _Order = Button_Order[6] 
var _SP =  "/Image/MeunButton/"+"设置/"+string(_Order)+".png"
var _X =  1140
var _Y = 72
Button_create(_Order,_SP,_X,_Y)

//"注销"
var _Order = "音频"
var _SP =  "/Image/MeunButton/"+"设置/"+string(_Order)+".png"
var _X = 16
var _Y =  (128+16)*1
Button_create(_Order,_SP,_X,_Y)

//"注销"
var _Order = "通知"
var _SP =  "/Image/MeunButton/"+"设置/"+string(_Order)+".png"
var _X = 16
var _Y = (128+16)*2
Button_create(_Order,_SP,_X,_Y)

//"注销"
var _Order = "界面"
var _SP =  "/Image/MeunButton/"+"设置/"+string(_Order)+".png"
var _X = 16
var _Y = (128+16)*3
Button_create(_Order,_SP,_X,_Y)

//"注销"
var _Order = "注销"
var _SP =  "/Image/MeunButton/"+"设置/"+string(_Order)+".png"
var _X = 16
var _Y = (128+16)*4
Button_create(_Order,_SP,_X,_Y)
