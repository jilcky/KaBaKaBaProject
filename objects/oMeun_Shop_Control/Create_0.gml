if (live_call()) return live_result;


show_debug_message("创建菜单系统"+string(object_get_name(object_index)))

ButtonMap  = DSmap_create()
ButtonOrder = 0



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
    ButtonOrder[0] = _order;
	
}
List = instance_create_depth(1280/4,128,depth,ui_listbox_ext)
with(List){
for (fg=0;fg<20;fg+=1) 
 { //if (fg mod 7) == 2 
   items[fg]="随便写点东西"+string(fg); 
   //else
  // items[fg]="Long List "+string(fg);
   
   sprites[fg]  = -1//choose(spr_home,spr_toggle,spr_dragon,-1)
 }
uiTextLabel="当商品列表也行 交任务列表也行";
uiAlign=fa_left;
uiButtonList=true;
uiShowArrows=true;
uiDrawHeader=false;
uiCustomDrawScript=scr_listbox_drawline;

uiDrawHilite = false;

Sprite_Width = 1280/2
Sprite_Height = 1920 / 4

image_xscale = Sprite_Width / 32
image_yscale = Sprite_Height/32
}