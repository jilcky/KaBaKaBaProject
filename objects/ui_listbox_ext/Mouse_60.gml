if noscroll then exit;
if position_meeting(mouse_x,mouse_y,self)
{
drawy=drawy + (Sprite_Height div 10);
if drawy> (Sprite_Height div 3) event_user(0);  
}


