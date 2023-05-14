#region Servidor
Port = 56060;
Server = network_create_server( network_socket_tcp , Port , 2);
#endregion
#region Detectar
while (Server < 0)
{
	Port++;
	Server = network_create_server( network_socket_tcp , Port , 2);
}
#endregion
#region Conexión
ClienteTiempo = 0;
#endregion
#region Lista de jugadores
ListaJugador = ds_list_create();
#endregion
#region Cliente valores
#endregion