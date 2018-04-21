/// @description drawn when uiTextValue is changed.

var hc,ym;

if uiAutoSize {if Sprite_Width != uiBubbleWidth { image_xscale=uiBubbleWidth/sprite_get_width(sprite_index); }      }

drawX=xstart;
drawY=ystart;




//use bounding box for text output

var xratio,yratio;


event_user(11);  //inherited called when possible resize!

event_user(2); //get resize.... 

with (curLB) 
  {
        uiAlign=other.uiAlign; 
        uiFont=other.uiFont;
        uiTextColor=other.uiTextColor;
        uiBackColor=other.uiBackColor;
        uiTextValue=other.uiTextValue;
        uiDrawBackColor=false;
        depth=other.depth-1;
        uiCenterWrap=false;
        uiAnchor=other.id;
        uiAnchorPos=false;  
        x=other.uiTextPosX;
        y=other.uiTextPosY;
        image_xscale=other.uiTextWidth / sprite_get_width(sprite_index);
        event_user(1);
        uiMemo="";
        
  }

ym=0;   //y center margin    
hc=0;
if curLB.uiCurHeight <=uiTextHeight  //center
   {
     ym= (uiTextHeight-curLB.uiCurHeight) div 2;
     curLB.y +=ym;
   }
else //need to streched y scale to fit    
     {    
        var rat=Sprite_Height/uiTextHeight;
        hc=(curLB.uiCurHeight-uiTextHeight);  //height change
        if (uiTextHeight+hc)<uiBubbleMin hc=uiBubbleMin-uiTextHeight;  //set min
        uiTextHeight +=hc;
       
        image_yscale=(Sprite_Height+(hc*rat)) / sprite_get_height(sprite_index);       
        event_user(2);  //we rescale;
        ym= (uiTextHeight-curLB.uiCurHeight) div 2;   
     }

      

switch (uiBubblePos)
{          case 0  : curLB.y = (drawY-Sprite_Height)+(uiTextPosY-drawY)+ym ;  break;
           case 1  : curLB.y = (drawY+Sprite_Height)-(uiTextPosY-drawY)-uiTextHeight+ym; break; //curLB.y += Sprite_Height ; break;           
           case 2  : curLB.x = drawX-(uiTextPosX-drawX)-uiTextWidth;curLB.y=(drawY+Sprite_Height)-(uiTextPosY-drawY)-uiTextHeight+ym;break;
           case 3  : curLB.x = drawX-(uiTextPosX-drawX)-uiTextWidth;curLB.y = (drawY-Sprite_Height)+(uiTextPosY-drawY)+ym; break;
}      


last_st=uiTextValue;  
uiTextValue="";

curLB.xstart=curLB.x;  //for animation
curLB.ystart=curLB.y;  


if uiAutoDestroy {alarm[0]=max(30,(string_length(last_st)*uiCloseFactor));};  //close if set
      
      
      
      




  



