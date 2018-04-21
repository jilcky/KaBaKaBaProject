if (live_call()) return live_result;


show_debug_message("创建菜单系统"+string(object_get_name(object_index)))

ButtonMap  = DSmap_create()
ButtonOrder = 0

file = "设置菜单/"

//背景
if true{
    var B = instance_create(560,156,ui_slider)

    B.Sprite_Width = sprite_get_width(Spr_Add(file+"滑动条.png"));
    B.image_xscale =  B.Sprite_Width / sprite_get_width(B.sprite_index);
    
      B.Sprite_Height = sprite_get_height(Spr_Add(file+"滑动器.png"));
    B.image_yscale =  B.Sprite_Height  / sprite_get_height(B.sprite_index);
    
	B.uiLineSprite = Spr_Add(file+"滑动条.png")
    B.uiSlideSprite = Spr_Add(file+"滑动器.png")
    
    
	  sprite_set_offset(Spr_Add(file+"滑动器.png"),sprite_get_width(Spr_Add(file+"滑动器.png"))/2,sprite_get_height(Spr_Add(file+"滑动器.png"))/2)
    
ButtonMap[?"BGM音量"] = B
ButtonOrder[0] = "BGM音量"
}
//音效
if true{
    var B = instance_create(560,156+128,ui_slider)

    B.Sprite_Width = sprite_get_width(Spr_Add(file+"滑动条.png"));
    B.image_xscale =  B.Sprite_Width / sprite_get_width(B.sprite_index);
    
      B.Sprite_Height = sprite_get_height(Spr_Add(file+"滑动器.png"));
    B.image_yscale =  B.Sprite_Height  / sprite_get_height(B.sprite_index);
    
	B.uiLineSprite = Spr_Add(file+"滑动条.png")
    B.uiSlideSprite = Spr_Add(file+"滑动器.png")
    
    
	  sprite_set_offset(Spr_Add(file+"滑动器.png"),sprite_get_width(Spr_Add(file+"滑动器.png"))/2,sprite_get_height(Spr_Add(file+"滑动器.png"))/2)
    
ButtonMap[?"音效音量"] = B
ButtonOrder[1] = "音效音量"
}
//人声
if true{
    var B = instance_create(560,156+128+125,ui_slider)

    B.Sprite_Width = sprite_get_width(Spr_Add(file+"滑动条.png"));
    B.image_xscale =  B.Sprite_Width / sprite_get_width(B.sprite_index);
    
      B.Sprite_Height = sprite_get_height(Spr_Add(file+"滑动器.png"));
    B.image_yscale =  B.Sprite_Height  / sprite_get_height(B.sprite_index);
    
	B.uiLineSprite = Spr_Add(file+"滑动条.png")
    B.uiSlideSprite = Spr_Add(file+"滑动器.png")
    
    
	  sprite_set_offset(Spr_Add(file+"滑动器.png"),sprite_get_width(Spr_Add(file+"滑动器.png"))/2,sprite_get_height(Spr_Add(file+"滑动器.png"))/2)
    
ButtonMap[?"人声音量"] = B
ButtonOrder[2] = "人声音量"
}

//返回按钮
if true{
    File = "设置菜单/"
    var _x = 0;
    var _y = 0;
    var _file = "返回.png"
    var _order = "返回"
     var _inst = instance_create_depth(_x,_y,0,ui_button)
     

	_inst.uiTextValue= "";//_order;
	_inst.sprite_index =  Spr_Add(File+_file);
	_inst.uiButtonSprite = Spr_Add(File+_file);
	_inst.uiSpriteScale=0;
	_inst.uiDrawBackColor=false;
	_inst.uiBackColor=c_white;
//    _inst.uiMouseHandle = false
    _inst.Sprite_Height = sprite_get_height(Spr_Add(File+_file))
    _inst.Sprite_Width = sprite_get_width(Spr_Add(File+_file))

	_inst.x=_inst.xstart+room_width;
	_inst.uiMoveX=_inst.xstart;
	_inst.uiMoveY=_inst.ystart;
	_inst.uiAniMove=true;

	_inst.uiEventObject = self.id;
	_inst.uiControlName= _order;
//	_inst.uiClickSound = true
    _inst.uiEventNum = 0
    _inst.uiPressFlash = false
    _inst.uiDownColor = c_gray

	
	ButtonMap[?_order] = _inst;
    ButtonOrder[3] = _order;
	
}
// 一个开关
if true{
    File = "设置菜单/"
    var _x = 0;
    var _y = 256;
    var _file = "开.png"
    var _order = "开关"
     var _inst = instance_create_depth(_x,_y,0,ui_button_ani)
     

	_inst.uiTextValue= "";//_order;
	_inst.sprite_index =  Spr_Add(File+"开.png");
	_inst.uiButtonSprite = Spr_Add(File+"开.png");
	_inst.uiButtonSpriteDown= Spr_Add(File+"关.png");
	_inst.uiSpriteScale=0;
	_inst.uiDrawBackColor=false;
	_inst.uiBackColor=c_white;
	_inst.uiShadowColor  = c_white;
	
//    _inst.uiMouseHandle = false
    _inst.Sprite_Height = sprite_get_height(Spr_Add(File+_file))
    _inst.Sprite_Width = sprite_get_width(Spr_Add(File+_file))

	_inst.x=_inst.xstart+room_width;
	_inst.uiMoveX=_inst.xstart;
	_inst.uiMoveY=_inst.ystart;
	_inst.uiAniMove=true;

	_inst.uiEventObject = self.id;
	_inst.uiControlName= _order;
//	_inst.uiClickSound = true
    _inst.uiEventNum = 0
    _inst.uiPressFlash = false
    _inst.uiDownColor = c_white
   _inst.uiHoverMode=0;



     _inst.uiIsToggle=true;


	
	ButtonMap[?_order] = _inst;
    ButtonOrder[4] = _order;
	
}