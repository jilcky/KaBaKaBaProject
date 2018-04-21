if (live_call()) return live_result;

show_debug_message("创建菜单系统"+string(object_get_name(object_index)))

enum ButtonType
{
	ui_button_ani,
	ui_gauge
}

ButtonMap  = DSmap_create()
ButtonOrder = 0

File = "主菜单/"
ini_open(working_directory+File+"MeunSet.ini")
var Size  = ini_read_real("Info","数量",0)
for (var i = 0; i < Size; ++i) {
	
	var _type = ini_read_real(i,"type",-4)
	var _x = ini_read_real(i,"x",-4) 
	var _y = ini_read_real(i,"y",-4)
	var _file = ini_read_string(i,"图片","")
	var _order = ini_read_string(i,"指令","")
	ButtonOrder[i] = _order;

	switch (_type) {
	    case ButtonType.ui_button_ani:
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

	
	ds_map_add(ButtonMap,_order,_inst)
	
	
	        break;
			
			
		case ButtonType.ui_gauge:
		 var _inst = instance_create_depth(_x,_y,0,ui_gauge)		
		_inst.sprite_index =  Spr_Add(File+_file);
		_inst.uiBackSprite= Spr_Add(File+_file);
//		_inst.uiBackColor = false;
		_inst.uiBarColor=c_white;
		//see the collision mask on the spr_guageback to determine where to place bar!
		_inst.uiBarSprite= Spr_Add(File+_file);;
		_inst.uiDrawBackColor=false;

   _inst.Sprite_Height = sprite_get_height(Spr_Add(File+_file))
    _inst.Sprite_Width = sprite_get_width(Spr_Add(File+_file))

		_inst.x=_inst.xstart+room_width;
		_inst.uiMoveX=_inst.xstart;
		_inst.uiMoveY=_inst.ystart;
		_inst.uiAniMove=true;

		ds_map_add(ButtonMap,_order,_inst)
		break;
		
	    default:
	        // code here
	        break;
	}
	
	

	
}