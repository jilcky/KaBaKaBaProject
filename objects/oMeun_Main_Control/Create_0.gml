if (live_call()) return live_result;
Button_Order = 0
Button_Order[0] = "仓库"
Button_Order[1] = "工作室"
Button_Order[2] = "房间"
Button_Order[3] = "战场"
Button_Order[4] = "植物园"
Button_Order[5] = "城堡"
Button_Order[6] = "商店"
Button_Order[7] = "设置"

Button_Order[8] = "玩家信息"
Button_Order[9] = "经验值"

Button_Order[10] = "食物"
Button_Order[11] = "金币"
Button_Order[12] = "钻石"

Button_Order[13] = "公告"

Button_Order[14] = "立绘"
Button_Info()

// "仓库"
var _Order = Button_Order[0] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 585
var _Y = 590
Button_create(_Order,_SP,_X,_Y)

//"工作室"
var _Order = Button_Order[1] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 192
var _Y = 590
Button_create(_Order,_SP,_X,_Y)

//"房间"
var _Order = Button_Order[2] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 776	
var _Y = 616
Button_create(_Order,_SP,_X,_Y)

//"战场"
var _Order = Button_Order[3] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 1016
var _Y = 513
Button_create(_Order,_SP,_X,_Y)

//"植物园"
var _Order = Button_Order[4] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 322
var _Y = 589
Button_create(_Order,_SP,_X,_Y)

//城堡"
var _Order = Button_Order[5] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 454
var _Y = 589
Button_create(_Order,_SP,_X,_Y)


//"商店"
var _Order = Button_Order[6] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 0
var _Y = 550
Button_create(_Order,_SP,_X,_Y)

Button_Order[7] = "设置"

//设置
var _Order = Button_Order[7] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 1218
var _Y = 64
Button_create(_Order,_SP,_X,_Y)

//玩家信息
var _Order = Button_Order[8] 
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 0
var _Y = 0
Button_create(_Order,_SP,_X,_Y)

//经验值
var _Order = Button_Order[9]
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 0
var _Y = 100
Button_create(_Order,_SP,_X,_Y)

//食物
var _Order = Button_Order[10]
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 446
var _Y = 0
Button_create(_Order,_SP,_X,_Y)

//金币
var _Order = Button_Order[11]
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X = 711
var _Y = 0
Button_create(_Order,_SP,_X,_Y)

//钻石
var _Order = Button_Order[12]
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X =970
var _Y = 0
Button_create(_Order,_SP,_X,_Y)


//公告
var _Order = Button_Order[13]
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X =842
var _Y = 128
Button_create(_Order,_SP,_X,_Y)

var _Order = Button_Order[14]
var _SP =  "/Image/MeunButton/"+"主菜单/"+string(_Order)+".png"
var _X =256
var _Y = -128
var L = Button_create(_Order,_SP,_X,_Y)
	var map = L
	TweenFire(map[? "id"], EaseInOutQuart, TWEEN_MODE_PATROL, true, 0.0, 6, "y", _Y, _Y+48);









show_debug_message("触发")


BG = sprite_add( "./Image/Background/3.png",0,0,0,0,0)
with(oDrawMeunBG)
{
sprite_delete(sprite_index)
sprite_index = other.BG
}