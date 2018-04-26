//---You can update variables here!---//
reset_dialogue_defaults();

switch(choice_variable){
	case -1:
	#region First Dialogue
		var i = 0;
		//Line 0
		myText[i]		= "看这儿，绿色的帽子。";
		myEffects[i]	= [13,1, 18,0];
		myEmotion[i]	= 0;
		myEmote[i]		= 6;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_examplechar;
		myTextCol[i]	= [13, c_lime, 18, c_white];

		//Line 1
		i++;
		myText[i]		= "我们都知道蓝色是最好的颜色。";
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_examplechar;
		myTextCol[i]	= [14, c_aqua, 18, c_white];

		//Line 2
		i++;
		myText[i]		= "说它…否则。";
		myTextSpeed[i]	= [1,0.5, 10,0.1];
		myEmotion[i]	= 0;
		myEmote[i]		= 4;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_examplechar;
		myTextCol[i]	= [11, c_red, 18, c_white];

		//Line 3
		i++;
		myText[i]		= ["讽刺地）蓝色是最好的颜色。", "绿色是最好的颜色。"];
		myEmotion[i]	= 0;
		myEmote[i]		= -1;
		myTypes[i]		= 1;
		myNextLine[i]	= [4,5];
		myChangeVars[i] = [id, "变量选择", ["blue", "green"]];
		mySpeaker[i]	= o_player;

		//Line 4
		i++;
		myText[i]		= "确切地!谢谢您!";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		myTypes[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= obj_examplechar;

		//Line 5
		i++;
		myText[i]		= "Nooooooooooooooooooooooooooo!";
		myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_examplechar;
		#endregion
	break;
	
	case "green":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "I can't believe you like green better...";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_examplechar;
		myTextCol[i]	= [26,c_lime, 31,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "blue":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hey there, fellow blue lover!";
		myTextSpeed[i]	= [1,1, 10,0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		myTypes[i]		= 0;
		mySpeaker[i]	= obj_examplechar;
		myTextCol[i]	= [19,c_aqua, 23,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}