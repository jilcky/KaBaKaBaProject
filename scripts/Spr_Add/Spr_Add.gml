//就是单张添加用
var _spr = -1

var file_Name = argument0

if ds_map_exists(oGame.Spr_map,file_Name)
{
    _spr = ds_map_find_value(oGame.Spr_map,file_Name)
}
else{
    var _spr = sprite_add(working_directory+ file_Name,0,0,0,0,0)
    ds_map_add(oGame.Spr_map,file_Name,_spr);
}
return _spr;

