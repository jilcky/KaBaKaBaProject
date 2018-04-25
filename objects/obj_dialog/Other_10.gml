/// @description sample dialog object  

//this event will get called when there's a result from dialog
//dialog widget must have this object set as its uiEventObject

if other.uiControlName=="dialogsample"   //result from dialogsample
   {
      with (other)  //work with dialog
        {
         switch uiDialogResult   
            {        
               case 1 : scr_bubble(750,550,"You Pressed Button 1",300,3,true); break;
               case 2 : scr_bubble(750,550,"You Pressed Button 2",300,3,true); break;
               case 3 : scr_bubble(750,550,"You Pressed Button 3",300,3,true); break;
               case 4 : scr_bubble(750,550,"You Pressed Button 4",300,3,true); break;
               case -1: scr_bubble(750,550,"You cancelled!",300,3,true); break;
            }  
         //to read contents of dialog
         // show_message_async('Input Box 1 = >'+uiEditBox1.uiTextValue);
         // show_message_async('Input Box 1 = >'+uiEditBox2.uiTextValue);
         // if uiCheckBox.checked then show_message_async('CheckBox is Set!');                                             
        }        
   }  //dialog result sample
else if other.uiControlName=="showdialog"
   {
     with (inst_dialog)
       {  
		   
		   uiBackSprite = __234
		  uiBackColor = -1
		  uiDrawBackColor = false;
		   //uiTitle.uiTextValue="623424";
		   //////with(uiTitle)
		   //////{x = xstart + (1920/4)}
		   
           //uiSubTitle.uiTextValue="2345"; 
           //uiCheckBox.uiTextValue="yes";
		   
//		   		   with (uiCheckBox)
//{
//draw_set_font(fText32)
//Sprite_Height = string_height("登陆")+16
//Sprite_Width = string_width("注册")*1.5
//}

		   
           uiButtons1.uiTextValue="登陆";
		   with (uiButtons1)
{
draw_set_font(fText32)
Sprite_Height = string_height("登陆")+16
Sprite_Width = string_width("注册")*1.5
}
           uiButtons2.uiTextValue="注册";
		   with (uiButtons2)
{
	draw_set_font(fText32)
Sprite_Height = string_height("登陆")+16
Sprite_Width = string_width("注册")*1.5
}
        //   uiButtons3.uiTextValue="6";
          // uiButtons4.uiTextValue="7";
//           uiEditBox1.uiTextLabel="账号";
  //         uiEditBox1.uiSetHeight=64;
    //       uiEditBox2.uiTextLabel="密码";
      //     uiEditBox2.uiSetHeight=64;
           uiShowDialog=true;
		   
		   		   with (uiButtons3)
{
	draw_set_font(fText32)
Sprite_Height = string_height("登陆")+16
Sprite_Width = string_width("注册")*1.5
}
		   
		   		   with (uiButtons4)
{
	draw_set_font(fText32)
Sprite_Height = string_height("登陆")+16
Sprite_Width = string_width("注册")*1.5
}
		   
Sprite_Width = 1920 * 0.8
Sprite_Height = 1920 / 4

x = 32

//image_xscale = Sprite_Width / 32
//image_yscale = Sprite_Height/32
       }    
   } //show dialog button pressed;
   

