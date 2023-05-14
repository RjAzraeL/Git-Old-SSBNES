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
			case (4):
			{
				if (scrExiste(objNaveRival))
				{
					/*
					BalaX = buffer_read(BufferRecibido , buffer_s16);
					BalaY = buffer_read(BufferRecibido , buffer_s16);
					BalaAngulo = buffer_read(BufferRecibido , buffer_s16);
					BalaTipo = buffer_read(BufferRecibido , buffer_s16);
					BalaPoder = buffer_read(BufferRecibido , buffer_s16);
					BalaIndice = 1;
					BalaVelocidad = buffer_read(BufferRecibido , buffer_s16);
					var BalaLocal = instance_create_depth(BalaX , BalaY , depth-1 , objBalaRival);
					BalaLocal.Tipo = BalaTipo;
					BalaLocal.Poder = BalaPoder;
					BalaLocal.image_angle = BalaAngulo;
					BalaLocal.direction = BalaAngulo;
					BalaLocal.speed = BalaVelocidad;
					BalaLocal.image_index = BalaIndice;
					BalaLocal.image_speed = 0;
					*/
				}
				break;
			}
		}
	}
}
#endregion