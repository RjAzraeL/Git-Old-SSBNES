#region Recibir datos del cliente
var Motivo = ds_map_find_value(async_load , "type");
switch (Motivo)
{
	case (network_type_connect):
	{
		var Jugador = ds_map_find_value(async_load , "socket");
		ds_list_add( ListaJugador , Jugador );
		scrSound(sfxKirbyJump);
		break;
	}
	case (network_type_disconnect):
	{
		var Socket = ds_map_find_value(async_load , "socket");
		var Posicion = ds_list_find_index(ListaJugador , Socket);
		if (Posicion != -1)
		{
			ds_list_delete(ListaJugador , Posicion);
		}
		show_message("Player disconnected!");
		break;
	}
	case (network_type_data):
	{
		var BufferRecibido = ds_map_find_value( async_load , "buffer" );
		buffer_seek( BufferRecibido , buffer_seek_start , 0 );
		Valor = buffer_read(BufferRecibido , buffer_u8);
		switch (Valor)
		{
			case (1):
			{
				Control._2LeftButtonActive = buffer_read(BufferRecibido , buffer_s16);
				Control._2LeftButtonPressedActive = buffer_read(BufferRecibido , buffer_s16);
				Control._2LeftButtonReleasedActive = buffer_read(BufferRecibido , buffer_s16);
				
				Control._2RightButtonActive = buffer_read(BufferRecibido , buffer_s16);
				Control._2RightButtonPressedActive = buffer_read(BufferRecibido , buffer_s16);
				Control._2RightButtonReleasedActive = buffer_read(BufferRecibido , buffer_s16);
				break;
			}
			case (3):
			{
				break;
			}
		}
		break;
	}
}
#endregion