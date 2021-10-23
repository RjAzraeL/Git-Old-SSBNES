///@arg name
function scrGetMusicByName(Name)
{
	var Valor = -1;
	for (var i = 0 ; i < ds_list_size(Control.MusicList) ; i++)
	{
		if (scrDameDato(Control.MusicList , i , "Name") == Name)
		{
			Valor = i;
		}
	}
	return Valor;
}