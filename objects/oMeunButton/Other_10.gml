//信息反馈回去
if Control and TapUse
with(Control)
{
if Order_Locking = false{
	Order_String = other.Order	
	Order_Mode = other.Mode 
	event_user(other.UseTween)
}
}