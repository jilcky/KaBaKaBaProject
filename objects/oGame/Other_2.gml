/// @description Insert description here
// You can write your code in this editor

enum GameInfo {
Height = 1080,
Width = 1920,

}

globalvar Room;
Room = ds_map_create();
Room[? "主菜单"] = rGameMainMeun;
Room[? "战斗"] = rGameBattleMeun;
Room[? "强化"] = rGameStrengthenMeun;
Room[? "仓库"] = rGameWarehouseMeun


//创建全局通用的变量体系
RoomBack = room

#region PC的情况下 测试方便的调整
//if true//os_type = os_windows 
{
	var Size = 0.5
window_set_size(GameInfo.Width*Size,GameInfo.Height*Size)
window_set_position(1920/2-1280/2,1080/2-720/2)//只是单纯的让游戏画面在中间而已
}

#endregion

file_copy("C:/Users/jilcky/Desktop/23/0.png","file.png")