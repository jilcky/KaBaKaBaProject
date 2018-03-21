//补间动画锁
 allowTouch = true

//记录下相对于的原本坐标
Sy = y
Sx = x

//由于使用的 触控 碰撞检测 不用同于使用GUI的坐标检测
//是 使用 鼠标触碰obj的mask解决的 与gui同步 就要与视野窗口同步
//下面是需要跟随的对象
Camera = view_camera[0]


image_index = 0;
image_speed = 0;

