/// @description 网络部分处理

if (live_call()) return live_result;

if N_Mode = "开始接入服务器"{
	#region 链接服务器
	
	network_set_config(network_config_connect_timeout, 6000);
	network_set_config(network_config_use_non_blocking_socket, 1);
	global.IP = "119.28.142.17"
	global.Port = 12450;
	global.Client = network_create_socket(network_socket_tcp);
	network_connect(global.Client,global.IP,global.Port);
	network_set_timeout(global.Client, 6000, 6000);
	#endregion
}



