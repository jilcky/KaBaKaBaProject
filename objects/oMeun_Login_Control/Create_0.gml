if (live_call()) return live_result;
N_Mode = "开始接入服务器";
event_user(0);

Dialog = instance_create(GameInfo.Width*0.5,GameInfo.Height*0.5,ui_dialog);
D_Mode = "";

global.PlayerInfo = ds_map_create()
global.PlayerInfo[?"账号"] = ""
global.PlayerInfo[?"密码"] = ""

