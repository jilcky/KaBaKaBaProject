inst_dialog = instance_create(x,y,ui_dialog)
with(inst_dialog)
{

		   
Sprite_Width = GameInfo.Width *.8
//Sprite_Height = GameInfo.Width / 4
uiDialogWidth= Sprite_Width ;

//values are set with editbox data in demo...but you would set here...

//uiTitle.uiTextValue='Rate App?';
uiTitle.uiTextColor=c_yellow;
uiTitle.uiFont=fText32;
//uiSubTitle.uiTextValue='Would you like to Rate App';
//uiCheckBox.uiTextValue="Save Password";
//uiCheckBox.uiTextColor=c_teal;
uiFont=fText32;
//uiButtons1.uiTextValue='Yes';
uiButtons1.uiFont=fText32;
//uiButtons2.uiTextValue='No';
uiButtons2.uiFont=fText32;
//uiButtons3.uiTextValue='Never';
uiButtons3.uiFont=fText32;
uiButtons4.uiFont=fText32;
//uiEditBox1.uiTextLabel='Enter your Name';
//uiEditBox1.uiSetHeight=128;
////uiEditBox2.uiTextLabel='Enter password';
//uiEditBox2.uiSetHeight=128;
//uiEditBox2.uiPasswordChar='*';
uiEditBox1.uiFont = fText32;
uiEditBox2.uiFont = fText32;

		   with (uiButtons1)
{
Sprite_Height = string_height("登陆")+16
Sprite_Width = string_width("注册")*2
}
//           uiButtons2.uiTextValue="注册";
		   with (uiButtons2)
{
Sprite_Height = string_height("登陆")+16
Sprite_Width = string_width("注册")*2
}

with(uiEditBox1)
{
Sprite_Height = 64
Sprite_Width = 200
}

with(uiEditBox2)
{
Sprite_Height = 64
Sprite_Width = 200
}
//uiButtons4.uiTextValue='Maybe';

//uiCustomDrawBack=scr_CustomDrawBack;

//uiShowDialog=true;

uiEventObject=obj_dialog;
uiControlName="dialogsample";


           uiShowDialog=true;
}