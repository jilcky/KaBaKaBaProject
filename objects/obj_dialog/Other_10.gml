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
       {   //uiTitle.uiTextValue="1";
       //    uiSubTitle.uiTextValue="2"; 
       //    uiCheckBox.uiTextValue="3";
           uiButtons1.uiTextValue="很长的一句哈";
           //uiButtons2.uiTextValue="5";
           //uiButtons3.uiTextValue="6";
           //uiButtons4.uiTextValue="7";
           uiEditBox1.uiTextLabel="撒地方";
           uiEditBox1.uiSetHeight=40;
           uiEditBox2.uiTextLabel="9";
           uiEditBox2.uiSetHeight=40;
           uiShowDialog=true;
		   
		   
Sprite_Width = 1280/2
Sprite_Height = 1920 / 4

//image_xscale = Sprite_Width / 32
//image_yscale = Sprite_Height/32
       }    
   } //show dialog button pressed;
   

