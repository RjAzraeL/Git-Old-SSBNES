///@arg language
function scrLanguageLoadTexto(Idioma)
{
	ini_open("l/"+string(scrLanguageLoadFile(Idioma)+".txt"));
	
	#region General text
	with (Language)
	{
		TextOption = ini_read_string("g" , "g" , "");
		TextOption2 = ini_read_string("g" , "d" , "");
	}
	#endregion
	
	ini_close();
}

///@arg language
function scrLanguageLoadFile(Language)
{
	ini_open("l/g.txt");
	var FileName = ini_read_string("g" , "l_"+string(Language) , "en");
	ini_close();
	return FileName;
}