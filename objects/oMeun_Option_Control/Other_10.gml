  show_debug_message(other.uiControlName)

switch (other.uiControlName) {
    case "返回":
	
		instance_create_depth(x,y,depth, oMeun_Main_Control);
		instance_destroy();
		
        break;
    default:
        // code here
        break;
}