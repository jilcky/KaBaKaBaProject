/// @description 登陆器处理
if (live_call()) return live_result;
if D_Mode = "创建登陆器" {
	#region 创建注册 / 登陆框;
	with(Dialog) {

		sprite_index = Spr_Add("注册框.png");

		uiSpriteIndex = Spr_Add("注册框.png");

		uiDialogSprite = Spr_Add("注册框.png");
		uiEventObject = other.id;
		uiControlName = "登陆和注册";
		uiDrawRounded = false;

		uiDrawBackColor = false;

		uiEventNum = 1
		//uiBackColor = // false - 1
		Sprite_Width = GameInfo.Width * 0.4;
		Sprite_Height = Sprite_Width * (9 / 16) ;
		uiDialogWidth = Sprite_Width;
		uiDialogHeight = Sprite_Height;
		uiTitle.uiTextValue = ""
		//			uiCustomDrawBack = false;
		uiSubTitle.uiTextValue = ""
		// uiCheckBox.uiTextValue="丢人"
		uiTitle.uiTextColor = c_yellow;

		//       uiButtons1.
		with(uiButtons1) {
			uiButtonSprite = Spr_Add("二选一按钮.png") uiTextValue = "注册";
			Sprite_Width = sprite_get_width(uiButtonSprite); //GameInfo.Width *0.1;
			Sprite_Height = sprite_get_height(uiButtonSprite); //GameInfo.Height *0.1;
			uiSpriteScale = 0;

			uiDrawBackColor = false;
			uiBackColor = c_white;
			uiPressFlash = false;
			uiDownColor = c_white;

		}

		with(uiButtons2) {
			uiButtonSprite = Spr_Add("二选一按钮.png");
			uiTextValue = "登陆";
			Sprite_Width = sprite_get_width(uiButtonSprite); //GameInfo.Width *0.1;
			Sprite_Height = sprite_get_height(uiButtonSprite); //GameInfo.Height *0.1;
			uiSpriteScale = 0;

			uiDrawBackColor = false;
			uiBackColor = c_white;
			uiPressFlash = false;
			uiDownColor = c_white;

			//mask_index =  Spr_Add("二选一按钮.png")
		}

		with(uiEditBox1) {
			//x = other.Dialog.x
			uiTextLabel = "账号"Sprite_Height = 64;
			uiSetHeight = Sprite_Height;
			Sprite_Width = 320;
			uiSetWidth = Sprite_Width;
			uiFont = fText32 uiDrawBackColor = false;
			uiDownColor = c_white;
			uiTextValue = global.PlayerInfo[?"账号"];

		}

		with(uiEditBox2) {
			uiTextLabel = "密码"Sprite_Height = 64;
			uiSetHeight = Sprite_Height;
			Sprite_Width = 320;
			uiSetWidth = Sprite_Width;
			uiFont = fText32 uiDrawBackColor = false;
			uiDownColor = c_white;
			uiTextValue = global.PlayerInfo[?"密码"];
		}
		//uiEditBox1.uiVisible = false;
		//uiEditBox2.uiSetHeight=64;
		//uiEditBox2.uiFont = font6;
		with(uiCheckBox) {
			uiTextValue = "@";
		}

		uiShowDialog = true;
		uiFadeIn = true;
		uiValue = true;
		uiFadeSpeed = room_speed;

	}
	D_Mode = "执行登陆器"
	#endregion
}
if D_Mode = "执行登陆器" {
	#region 登陆框处理
	if Dialog.uiControlName == "登陆和注册" //result from dialogsample
	{
		global.PlayerInfo[?"账号"] = Dialog.uiEditBox1.uiTextValue;
		global.PlayerInfo[?"密码"] = Dialog.uiEditBox2.uiTextValue;

		with(Dialog) //work with dialog
		{
			switch uiDialogResult {
			case 1:
				#region注册
				var u = global.PlayerInfo[?"账号"];
				var p = global.PlayerInfo[?"密码"];
				if u != ""or p != "" { // exit
					var SeedMap = ds_map_create();
					ds_map_add(SeedMap, "账号", u);
					ds_map_add(SeedMap, "指令", "注册");
					ds_map_add(SeedMap, "携带信息", p);
					NetSeedStr(ds_map_write(SeedMap), global.Client);
					ds_map_destroy(SeedMap)
				} else {
					uiFadeOut = false;
					uiShowDialog = true;
					AddMassage("密码账号不能为空")
				};#endregion;
				break;
			case 2:
				#region登陆
				var u = global.PlayerInfo[?"账号"];
				var p = global.PlayerInfo[?"密码"];
				if u != ""or p != "" { // exit
					var SeedMap = ds_map_create();
					ds_map_add(SeedMap, "账号", u);
					ds_map_add(SeedMap, "指令", "登陆");
					ds_map_add(SeedMap, "携带信息", p);
					NetSeedStr(ds_map_write(SeedMap), global.Client);
					ds_map_destroy(SeedMap)
				} else {
					uiFadeOut = false;
					uiShowDialog = true;
					AddMassage("密码账号不能为空")
				};#endregion;
				break;
			}
		}

	}

	#endregion
}