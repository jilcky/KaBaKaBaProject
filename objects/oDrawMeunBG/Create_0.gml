rot0 = 0
rot1 = 0
if !debug_mode
{
T =  TweenFire(id, EaseInOutBack, TWEEN_MODE_ONCE, true, 0.0, 6.0,
	"rot0", 0, 360);

TweenFire(id, EaseInOutBack, TWEEN_MODE_ONCE, true, 0.0, 4.0,
	"rot1", 0, -360);
	TweenAddCallbackUser(T, TWEEN_EV_FINISH, id, 1);
}
else
{
    event_user(1)
}

sprite_index = sprite_add(working_directory+"./Image/Background/3.png",0,0,0,0,0)

depth = 100