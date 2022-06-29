///@arg language
function scrLanguageLoadTexto(LocalLanguage)
{
	ini_open("l/"+string(scrLanguageLoadFile(LocalLanguage)+".txt"));
	
	#region General text
	with (Language)
	{
		Text_l0o0 = ini_read_string("gm" , "l0o0" , "");
		Text_l0o1 = ini_read_string("gm" , "l0o1" , "");
		Text_l0o2 = ini_read_string("gm" , "l0o2" , "");
		Text_l0o3 = ini_read_string("gm" , "l0o3" , "");
		Text_l0o4 = ini_read_string("gm" , "l0o4" , "");
		Text_mtl0 = ini_read_string("gm" , "mtl0" , "");
	}
	#endregion
	
	ini_close();
}

///@arg language
function scrLanguageLoadFile(LocalLanguage)
{
	ini_open("l/g.txt");
	var FileName = ini_read_string("g" , "l_"+string(LocalLanguage) , "en");
	ini_close();
	return FileName;
}