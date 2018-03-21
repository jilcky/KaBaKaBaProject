if (live_call()) return live_result;


draw_set_alpha(Apl)
draw_set_halign(1)
draw_set_valign(2)
draw_set_font(f64)
var Str = ""
if Check < 1{
Str = "Loading..." +"("+string(Check*100)+"%)"
}
else
{
Str = "Touch Start Game"
}

draw_text(GameInfo.Width/2,785,Str)

draw_set_alpha(1)
var w = sprite_get_width(___12)*Check
draw_sprite_part(___12,0,0,0,w,sprite_get_height(___12),302,837)