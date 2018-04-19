

x_speed_ = 0;
y_speed_ = 0;
max_speed_ = 5;
acceleration_ = 1.5;

//instance_create_layer(x, y, "Instances", o_camera);
//o_level.grid_ 

mp_grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32)

mp_grid_add_instances(mp_grid , object3, true)


global.grid_  = ds_grid_create(room_width div 32,room_height div 32)


mp_grid_to_ds_grid(mp_grid,global.grid_)


spd = 2;

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fText;
myName				= "Green";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;