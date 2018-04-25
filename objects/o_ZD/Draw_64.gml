
	if! surface_exists(sur)
{
	sur=surface_create(1920,1080)
	
	
}
	surface_set_target(sur)
	if surface_exists(application_surface)
	draw_surface(application_surface,0,0)
	surface_reset_target()
	
	draw_clear(c_black)
	draw_surface(sur,0+irandom_range(-32,32),irandom_range(-32,32))
	