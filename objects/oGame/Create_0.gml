/// @description 创建游戏设定




show_debug_overlay(true)
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
if true//os_type = os_windows 
{
 	var Size = 0.33
 window_set_size(GameInfo.Width*Size,GameInfo.Height*Size)
 window_set_position(1920/2,1080/2)//只是单纯的让游戏画面在中间而已


}

display_set_gui_size(GameInfo.Width,GameInfo.Height)
#endregion


globalvar Meun_Index;
Meun_Index = ds_map_create()

Meun_Index[?"主菜单"] = oMeun_Main_Control;
Meun_Index[?"仓库"] = oMeun_Warehouse_Control;
Meun_Index[?"房间"] = oMeun_Room_Control;
Meun_Index[?"战场"] = oMeun_Battlefield_Control;
Meun_Index[?"植物园"] = oMeun_Vivarium_Control;
Meun_Index[?"城堡"] = oMeun_Castle_Control;
Meun_Index[?"商店"] = oMeun_Shop_Control;
Meun_Index[?"设置"] = oMeun_Option_Control;
Meun_Index[?"工作室"] = oMeun_Studio_Control;

Map_list = ds_list_create()
List_list = ds_list_create()
Spr_map = ds_list_create()

show_debug_message("创建游戏")