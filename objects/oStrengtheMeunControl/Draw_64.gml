if (live_call()) return live_result;
    draw_set_color(c_white)
    draw_set_font(f64)
    draw_text(256,256,fps)
    
    
    var Ord= "AP"
    
    if ds_map_exists(Button,Ord)
    {
        var map = Button[?Ord]
        var ID = map[?"id"] 
        ID.UseDrawGUI = false
        
        var Size = 0.1
        var SaveDepth = depth
        depth = ID.depth
        with(ID)
        {
            var LVmax = irandom_range(1,99)
            var LV = irandom_range(1,LVmax)
            
            
            if sprite_exists(sprite_index)
            
            draw_sprite_part(sprite_index,0,0,0,
            
            sprite_get_width(sprite_index)*(LV/LVmax),
            sprite_get_height(sprite_index),
            x,y)
            
            
        }
        
        draw_set_halign(0)
        draw_set_valign(1)
        draw_text(ID.x,ID.y,"LV:"+string(irandom(99)))
        
        
        
        depth = SaveDepth
    }
    if  ds_map_exists(Button,string(Ord)+"_未满")
    {
        var map = Button[?string(Ord)+"_未满"]
        var ID = map[?"id"] 
        
        var map2 = Button[?string(Ord)+"_未满"]
        var ID2 = map[?"id"] 
        
        ID.UseDrawGUI = true
        ID.depth = depth+1
     
    }
    
  
    
    

draw_set_alpha(BlackTime);
draw_set_color(make_color_rgb(12, 12, 12));
draw_roundrect(0, 0, 1920, 1080, 0);
draw_set_alpha(1);