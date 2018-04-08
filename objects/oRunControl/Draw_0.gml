/*
var rectangleWidth = 256

for (var a = 0; a < room_width div rectangleWidth + 1; ++a) {
for (var b = 0; b < room_height div rectangleWidth +1; ++b) {

draw_set_color(c_red)
 var xx = a*rectangleWidth
var yy = b*rectangleWidth
draw_rectangle(xx,yy,xx+rectangleWidth,yy+rectangleWidth,true)

draw_set_halign(1)
draw_set_valign(1)
draw_text(xx+rectangleWidth/2,yy+rectangleWidth/2,string(a)+":"+string(b))

}
}
