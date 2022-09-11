///arg id
function scrGetPalette(CharacterId)
{
	ini_open("palette.ini");
	
	var CodeName = scrDameDato(Control.CharacterList , CharacterId , "Palette Name");
	
	var Paquete = ds_map_create();
	Paquete[?"t"] = ini_read_real(CodeName , "t" , 0);
	for (var i = 0 ; i <= Paquete[?"t"] ; i++)
	{
		Paquete[?"c"+string(i) + "_0"] = scrStringToList( ini_read_string(CodeName , "c"+string(i) + "_0" , "") );
		Paquete[?"c"+string(i) + "_1"] = scrStringToList( ini_read_string(CodeName , "c"+string(i) + "_1" , "") );
		Paquete[?"c"+string(i) + "_2"] = scrStringToList( ini_read_string(CodeName , "c"+string(i) + "_2" , "") );
		Paquete[?"c"+string(i) + "_3"] = scrStringToList( ini_read_string(CodeName , "c"+string(i) + "_3" , "") );
	}
	
	ds_list_find_value(Control.CharacterList , CharacterId)[? "Palette Code"] = Paquete;
	
	ini_close();
}