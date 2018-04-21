if (live_call()) return live_result;

  show_debug_message(other.uiControlName)

switch (other.uiControlName) {
    case "设置":

		instance_create_depth(x,y,depth, oMeun_Option_Control);
		instance_destroy();
		
        break;
    
     case "工作室":

		instance_create_depth(x,y,depth, oMeun_Studio_Control);
		instance_destroy();
		
        break;
		
	 case "商店":

		instance_create_depth(x,y,depth, oMeun_Shop_Control);
		instance_destroy();
		
        break;
        
    default:
        // code here
        break;
}