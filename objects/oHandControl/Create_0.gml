/// @description Insert description here
// You can write your code in this editor
Flick = 0
Filck = 0
Dra = 0

Debug = ds_list_create()

Col = c_black

var w = sprite_get_width(sprite_index);
var h = sprite_get_height(sprite_index);
bSize = room_height*2 div h
aSize = 5
for (var a = 0; a < aSize  ; ++a) {
    for (var b = 0; b < bSize ; ++b) {
		Button[a,b] = instance_create_depth(16+a*(w+16),b*(h+16)+128 ,0,oHand)
		Tween[a,b] = -1
	}
}

<<<<<<< HEAD
<<<<<<< HEAD
PartHight = b*(h+32)  -GameInfo.Width
=======
PartHight = b*(h+32)  -720
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
PartHight = b*(h+32)  -720
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定

PartHight = max(0,PartHight)


Date = ds_map_create()

SelfTween = -1