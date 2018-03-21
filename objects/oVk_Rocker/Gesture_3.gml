
xx = event_data[?"posX"]
yy = event_data[?"posY"]

MX = x;
MY = y;

Len  = point_distance(MX,MY,xx,yy)
Dir  = point_direction(MX,MY,xx,yy)
RX = min(lengthdir_x(min(Len,R),Dir))
RY = min(lengthdir_y(min(Len,R),Dir))
