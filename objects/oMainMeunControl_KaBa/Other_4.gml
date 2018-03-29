show_debug_message("开始")

if (live_call()) return live_result;



Sprite = ds_map_create() Button = ds_map_create() TweenList = ds_list_create()

display_set_gui_size(GameInfo.Width, GameInfo.Height)

Gay = ""

MeunFile = ""

TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 0.5, "BlackTime", 0.5, 0);
TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 3, "Size", 0, 100);

MeunFile = working_directory + "./菜单布置/主菜单.ini";

TweenFire(id, EaseOutExpo, TWEEN_MODE_ONCE, true, 0.0, 3, "Size", 0, 100);

window_set_caption(MeunFile)

if file_exists(MeunFile) {

	#region 加载素材和布置按钮;
	show_debug_message("读取" + MeunFile + "开始加载素材")

	ini_open(MeunFile)

	Size = ini_read_real("Info", "数量", 0)

	for (var i = 0; i < Size; ++i) {
		var X = ini_read_real(i, "x", 0);
		var Y = ini_read_real(i, "y", 0);

		var CX = ini_read_real(i, "Cx", 0);
		var CY = ini_read_real(i, "Cy", 0);

		var sp = ini_read_string(i, "图片", "");
		var Ord = ini_read_string(i, "指令", "");

		Sprite[? Ord] = sprite_add(working_directory + sp, 0, 0, 0, 0, 0);

		Button[? Ord] = ds_map_create();

		var map = Button[? Ord];

		map[? "id"] = instance_create_depth(X, Y, 0, oMeunButton);
		map[? "id"].sprite_index = Sprite[? Ord];
		map[? "id"].mask_index = Sprite[? Ord];
		map[? "id"].depth = -i;
		map[? "x"] = X;
		map[? "y"] = Y;
		map[? "Cx"] = CX;
		map[? "Cy"] = CY;
		map[? "图片"] = sp map[? "使用Tween"] = ini_read_real(i, "使用Tween", 0)

		var ID = map[? "id"];
		ID.NoUseTween = map[? "使用Tween"];
		ID.Control = id
		TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "x", CX, X);
		TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "y", CY, Y);

	}

	ini_close()

	#endregion

} else {
	show_debug_message("没找到")
}

if true and room = Room[? "主菜单"] // 游戏房间开始有 调整立绘用的
{

	var X = 256
	var Y = -256

	var CX = X
	var CY = 1920

	var sp = "./Image/VerticalDrawing/" + string(irandom(5)) + ".png"

	var Ord = "立绘"

	Sprite[? Ord] = sprite_add(working_directory + sp, 0, 0, 0, 0, 0)

	//Button[?Ord] = ds_map_create()
	var map = Button[? Ord]

	//	map[?"id"] =  instance_create_depth(X,Y,0,oMeunButton)
	map[? "id"].sprite_index = Sprite[? Ord];
	map[? "id"].mask_index = Sprite[? Ord];
	map[? "id"].x = CX;
	map[? "id"].y = CY;

	map[? "x"] = X;
	map[? "y"] = Y;
	map[? "Cx"] = CX;
	map[? "Cy"] = CY;

	map[? "id"].image_xscale = 0.8;
	map[? "id"].image_yscale = 0.8
	var ID = map[? "id"];
		ID.NoUseTween = true
	
	TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "x", CX, X);
	TweenFire(ID, EaseOutCubic, TWEEN_MODE_ONCE, true, 0.0, 0.5, "y", CY, Y);
	VPATROL = TweenFire(ID, EaseOutCubic, TWEEN_MODE_PATROL, true, 0.5, 3, "y", Y + 32, Y - 32);
}