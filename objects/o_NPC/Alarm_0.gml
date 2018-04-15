
if path_exists( path )
path_delete(path)

mp_grid_add_instances(grid, object3, false);


	      path = path_add();
//			do  {
var _X = 				irandom(room_width);
var _Y =		room_height - irandom(576 );
				mp_grid_path(grid, path, x, y, _X,_Y , 1)
	     
//   }until
//   (
////   path_get_length(path)
//   )
	   
	   show_debug_message("X:"+string(_X)+"_Y:"+string(_Y))
	   
	show_debug_message(path_get_length(path))
    path_start(path, 3, 0 , 0);
	
	
	
	if !path_get_length(path)
	alarm[0] = 1
	
	