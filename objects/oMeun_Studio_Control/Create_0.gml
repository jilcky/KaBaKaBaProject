if (live_call()) return live_result;
ButtonMap  = DSmap_create()
ButtonOrder = 0

<<<<<<< HEAD
<<<<<<< HEAD
List = instance_create(GameInfo.Width/4,128,ui_listbox_horz)
=======
List = instance_create(1280/4,128,ui_listbox_horz)
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
List = instance_create(1280/4,128,ui_listbox_horz)
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定

with(List){
uiItemWidth= GameInfo.Width / 4;  //set the width of each element...

for (fg=0;fg<6;fg+=1) 
 { //if (fg mod 7) == 2 
   //items[fg]=choose("Boy","Truck","Phone"); else
   items[fg]="编号_ "+string(fg);

   
   var Sur = surface_create(GameInfo.Width/4,GameInfo.Width / 4)
   surface_set_target(Sur)
   var sp = Spr_Add("立绘/"+string(fg)+".png")
   if sp
   draw_sprite_ext(sp ,0,0,0,1/4,1/4,0,c_white,1)
   surface_reset_target()
      sprites[fg]= sprite_create_from_surface(Sur,0,0,surface_get_width(Sur),surface_get_height(Sur),0,0,0,0)
 }
uiTextLabel="只看 摸了也没用";

uiAlign=fa_center;
uiButtonList=false;
uiShowArrows=false;
uiDrawHeader=false;
uiDrawLines=false;
uiEventObject = other.id

uiDrawHilite = false;

//uiCustomDrawScript=scr_listhorz_drawitem;
uiDrawBackColor=false;

uiComboID= other.id

uiSnapLeft=true;    //will snap the left item to the left of the widget (no left side clipping)....
uiLeftMargin=256;
uiAutoSelect=false; //will
uiDrawHilit = false

//uiAutoSelect=true; //will auto hilite the center item

<<<<<<< HEAD
<<<<<<< HEAD
Sprite_Width = GameInfo.Width/2
Sprite_Height = GameInfo.Width / 4
=======
=======
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
Sprite_Width = 1280/2
Sprite_Height = 1920 / 4
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定

image_xscale = Sprite_Width / 32
image_yscale = Sprite_Height/32

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
    ButtonOrder[0] = _order;
	
}

GetPos = 0