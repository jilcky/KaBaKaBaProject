//calls the eventobject on select.
//its in an alarm because we support  uiDelayEvent;  for highlight/buttons
var evNum;

evNum=uiEventNum;   
if uiEventObject != noone
 if instance_exists(uiEventObject) 
   with (uiEventObject) {if evNum>=0 event_user(evNum);}
          


