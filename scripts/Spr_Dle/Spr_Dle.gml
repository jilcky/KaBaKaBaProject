//就是单张添加用
var _spr = -1

var file_Name = argument0

if ds_map_exists(oGame.Spr_map,file_Name)
{
	
    _spr = ds_map_find_value(oGame.Spr_map,file_Name)
	
	sprite_delete(_spr)
	
	ds_map_delete(oGame.Spr_map,file_Name)
	
	return true;
}
else{
   
   return false;
}


