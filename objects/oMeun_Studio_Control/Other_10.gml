
if variable_instance_get(other,"itemindex"){
  show_debug_message(other.itemindex)
   GetPos = other.itemindex;
}
  switch (other.uiControlName) {
    case "返回":
	
		instance_create_depth(x,y,depth, oMeun_Main_Control);
		instance_destroy();
		
        break;
    default:
        // code here
        break;
}