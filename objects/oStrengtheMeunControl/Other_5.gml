oGame.RoomBack = room
#region 清理

var map = Button
var key = ds_map_find_first(map) for (var i = 0; i < ds_map_size(map); ++i) {

	ds_map_destroy(ds_map_find_value(map, key))

	key = ds_map_find_next(map, key)
}

var map = Sprite
var key = ds_map_find_first(map);
for (var i = 0; i < ds_map_size(map); ++i) {

	if sprite_exists(Sprite[? key])
	sprite_delete(Sprite[? key]);

	key = ds_map_find_next(map, key);
}

ds_map_destroy(Button);
ds_map_destroy(Sprite);

#endregion