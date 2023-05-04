function scrDameDato(Lista , Posicion , Llave)
{
	return ds_list_find_value(Lista , Posicion)[? string(Llave)];
}

function scrGetDataMusic(Position)
{
	return ds_list_find_value(Control.MusicList , Position)[? "Body"];
}