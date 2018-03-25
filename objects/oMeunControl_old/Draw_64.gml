if (live_call()) return live_result;

if room = Room[?"用户信息"] and !TweenExists(RetunButtonOrder)
{	
    
     draw_set_color(make_color_rgb(248,248,248))
    
	draw_set_font(f64)
	draw_set_halign(0)
	draw_set_valign(2)
	
	draw_text(0,1080,"User:"+global.UserInfo[?"账号"])
	draw_text(0,1080 - 96 ,"ID:"+string(random_get_seed()))
	
	draw_set_halign(1)
	draw_set_valign(1)
	draw_set_font(f256)
	
	draw_text(1920/2,1080/2,string(Size)+"%")
	
    
}

if room = Room[?"主菜单"]
{
    //	draw_text(1920/2,1080/2,string(Room)+"%")
    //		draw_text(1920/2,1080/2+100,string(Room)+"%")
    //			draw_text(1920/2,1080/2+200,string(Room)+"%")
}

if room = Room[?"强化"]
{
    var map = Button[?"AP"]
    
    draw_set_color(c_white)
    draw_set_font(f64)
    draw_text_transformed(map[?"x"] - 128,map[?"y"],"LV.32",0.5,0.5,0)
    
    // if variable_instance_exists(id,"AP")
    //     {variable_instance_set(id,"AP",sprite_add(
    //         working_directory+"./Image/MeunButton/10.png",0,0,0,0,0)
    //         ))}
    // draw_sprite(variable_instance_get(id,"AP"),0,map[?"x"] - 128,map[?"y"])        
    
}
    //绘制黑底
 //draw_clear_alpha(c_black,0)
 draw_set_alpha(BlackTime)
 draw_set_color(make_color_rgb(12,12,12))
 draw_roundrect(0,0,1920,1080,0)
 draw_set_alpha(1)