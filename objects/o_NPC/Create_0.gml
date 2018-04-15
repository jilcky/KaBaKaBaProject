x_speed_ = 0;
y_speed_ = 0;
max_speed_ = 5;
acceleration_ = 1.5;

instance_create_layer(x, y, "Instances", o_camera);
//o_level.grid_ 

//global.grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32)
//mp_grid_add_instances(global.grid , object3, true)
//mp_grid_to_ds_grid(global.grid,o_level.grid_)


alarm[0] = 1//irandom(300)

old_x = x

old_y = y

grid = mp_grid_create(0, 576, room_width div 32, (room_height) div 32, 32, 32);

path  = 0