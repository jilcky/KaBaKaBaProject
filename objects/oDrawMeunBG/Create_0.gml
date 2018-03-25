rot0 = 0
rot1 = 0

T =  TweenFire(id, EaseInOutBack, TWEEN_MODE_ONCE, true, 0.0, 6.0,
	"rot0", 0, 360);

TweenFire(id, EaseInOutBack, TWEEN_MODE_ONCE, true, 0.0, 4.0,
	"rot1", 0, -360);


TweenAddCallbackUser(T, TWEEN_EV_FINISH, id, 1);

