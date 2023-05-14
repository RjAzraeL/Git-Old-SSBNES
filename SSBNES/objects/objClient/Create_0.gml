#region Cliente
SocketClient = network_create_socket(network_socket_tcp);
global.IP = "127.0.0.1";
global.Port = "56060";
Connection = network_connect(SocketClient , global.IP , real(global.Port));
network_set_timeout(SocketClient , 4000 , 4000);
ServidorTiempo = 0;
if (Connection < 0)
{
	show_message("No connection");
	game_restart();
}
HayConexion = true;
alarm[0] = 60*5;
#endregion
#region Variables
for (var i = 0 ; i < 4 ; i++)
{
	SpriteIndex[i] = sprChKirbyDuck;
	ImageIndex[i] = 0;
	X[i] = 0;
	Y[i] = 0;
	ScaleX[i] = 0;
	ScaleY[i] = 0;
	Angle[i] = 0;
	Color[i] = 0;
	Alpha[i] = 0;
	Visible[i] = 0;
}
#endregion