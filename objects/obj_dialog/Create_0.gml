inst_dialog = instance_create(x,y,ui_dialog)


with(inst_dialog)
{

uiDialogWidth=450;

//values are set with editbox data in demo...but you would set here...

//uiTitle.uiTextValue='Rate App?';
uiTitle.uiTextColor=c_yellow;
uiTitle.uiFont=font6;
//uiSubTitle.uiTextValue='Would you like to Rate App';
//uiCheckBox.uiTextValue="Save Password";
uiCheckBox.uiTextColor=c_teal;
uiFont=font6;
//uiButtons1.uiTextValue='Yes';
uiButtons1.uiFont=font6;
//uiButtons2.uiTextValue='No';
uiButtons2.uiFont=font6;
//uiButtons3.uiTextValue='Never';
uiButtons3.uiFont=font6;
uiButtons4.uiFont=font6;
//uiEditBox1.uiTextLabel='Enter your Name';
uiEditBox1.uiSetHeight=128;
////uiEditBox2.uiTextLabel='Enter password';
uiEditBox2.uiSetHeight=128;
//uiEditBox2.uiPasswordChar='*';
uiEditBox1.uiFont = font6;
uiEditBox2.uiFont = font6;

with(uiEditBox1)
{
Sprite_Height = 32
Sprite_Width = 200
}

with(uiEditBox2)
{
Sprite_Height = 32
Sprite_Width = 200
}
//uiButtons4.uiTextValue='Maybe';

//uiCustomDrawBack=scr_CustomDrawBack;

//uiShowDialog=true;

uiEventObject=obj_dialog;
uiControlName="dialogsample";


}