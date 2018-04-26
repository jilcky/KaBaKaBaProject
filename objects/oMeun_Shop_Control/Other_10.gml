if (live_call()) return live_result;

show_debug_message("妇产科ing")

if variable_instance_get(other,"itemindex"){
  show_debug_message(other.itemindex)
   GetPos = other.itemindex;
}

  switch (other.uiControlName) {
    case "返回":
	
		instance_create_depth(x,y,depth, oMeun_Main_Control);
		instance_destroy();
		
        break;
		
	
    default:
        // code here
        break;
		
		
		
}
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
     with (C)
       {   uiTitle.uiTextValue="a"
           uiSubTitle.uiTextValue="b"
           uiCheckBox.uiTextValue="v"
           uiButtons1.uiTextValue="s"
           uiButtons2.uiTextValue="b"
           uiButtons3.uiTextValue="a"
           uiButtons4.uiTextValue="d"
           uiEditBox1.uiTextLabel="d"
           uiEditBox1.uiSetHeight=40;
           uiEditBox2.uiTextLabel="b"
           uiEditBox2.uiSetHeight=40;
           uiShowDialog=true;
		   
		   
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
Sprite_Width = 1920/2
Sprite_Height = 1920 / 4
>>>>>>> parent of 145b83e... 手滑失败了
=======
Sprite_Width = 1920/2
Sprite_Height = 1920 / 4
>>>>>>> parent of 145b83e... 手滑失败了

image_xscale = Sprite_Width / 32
image_yscale = Sprite_Height/32
       }    
   } //show dialog button pressed;
   

