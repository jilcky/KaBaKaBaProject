
	if! surface_exists(sur)
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	sur=surface_create(GameInfo.Width,GameInfo.Width)
=======
	sur=surface_create(1280,720)
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
	sur=surface_create(1280,720)
>>>>>>> parent of c82f0a6... 登陆器逻辑搞定
=======
	sur=surface_create(1920,1080)
>>>>>>> parent of 145b83e... 手滑失败了
	
	
}
	surface_set_target(sur)
	if surface_exists(application_surface)
	draw_surface(application_surface,0,0)
	surface_reset_target()
	
	draw_clear(c_black)
	draw_surface(sur,0+irandom_range(-32,32),irandom_range(-32,32))
	