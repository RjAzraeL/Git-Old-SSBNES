#region Recibir datos del cliente
var Motivo = ds_map_find_value(async_load , "type");
switch (Motivo)
{
	case (network_type_data):
	{
		var BufferRecibido = ds_map_find_value( async_load , "buffer" );
		buffer_seek( BufferRecibido , buffer_seek_start , 0 );
		Valor = buffer_read(BufferRecibido , buffer_u8);
		switch (Valor)
		{
			case (2):
			{
				X[0] = buffer_read(BufferRecibido , buffer_s16);
				Y[0] = buffer_read(BufferRecibido , buffer_s16);
				SpriteIndex[0] = buffer_read(BufferRecibido , buffer_s16);
				ImageIndex[0] = buffer_read(BufferRecibido , buffer_s16);
				ScaleX[0] = buffer_read(BufferRecibido , buffer_s16);
				ScaleY[0] = 1;
				Angle[0] = 0;
				Color[0] = c_white;
				Alpha[0] = 1;
				Visible[0] = buffer_read(BufferRecibido , buffer_s16);
				break;
			}
			case (3):
			{
				X[1] = buffer_read(BufferRecibido , buffer_s16);
				Y[1] = buffer_read(BufferRecibido , buffer_s16);
				SpriteIndex[1] = buffer_read(BufferRecibido , buffer_s16);
				ImageIndex[1] = buffer_read(BufferRecibido , buffer_s16);
				ScaleX[1] = buffer_read(BufferRecibido , buffer_s16);
				ScaleY[1] = 1;
				Angle[1] = 0;
				Color[1] = c_white;
				Alpha[1] = 1;
				Visible[1] = buffer_read(BufferRecibido , buffer_s16);
				break;
			}
			case (4):
			{
				X[2] = buffer_read(BufferRecibido , buffer_s16);
				Y[2] = buffer_read(BufferRecibido , buffer_s16);
				SpriteIndex[2] = buffer_read(BufferRecibido , buffer_s16);
				ImageIndex[2] = buffer_read(BufferRecibido , buffer_s16);
				ScaleX[2] = buffer_read(BufferRecibido , buffer_s16);
				ScaleY[2] = 1;
				Angle[2] = 0;
				Color[2] = c_white;
				Alpha[2] = 1;
				Visible[2] = buffer_read(BufferRecibido , buffer_s16);
				break;
			}
			case (5):
			{
				X[3] = buffer_read(BufferRecibido , buffer_s16);
				Y[3] = buffer_read(BufferRecibido , buffer_s16);
				SpriteIndex[3] = buffer_read(BufferRecibido , buffer_s16);
				ImageIndex[3] = buffer_read(BufferRecibido , buffer_s16);
				ScaleX[3] = buffer_read(BufferRecibido , buffer_s16);
				ScaleY[3] = 1;
				Angle[3] = 0;
				Color[3] = c_white;
				Alpha[3] = 1;
				Visible[3] = buffer_read(BufferRecibido , buffer_s16);
				break;
			}
		}
	}
}
#endregion