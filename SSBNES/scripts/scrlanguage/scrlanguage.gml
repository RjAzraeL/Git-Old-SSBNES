///@arg language
function scrLanguageLoadTexto(LocalLanguage)
{
	ini_open("l/"+string(scrLanguageLoadFile(LocalLanguage)+".txt"));
	
	#region General text
	with (Language)
	{
		Text_ts0 = ini_read_string("TITLE SCREEN" , "ts0" , "");
		
		Text_mtl0 = ini_read_string("MAIN MENU" , "mtl0" , "");
		
		Text_ml0o0 = ini_read_string("MAIN MENU" , "ml0o0" , "");
		Text_ml0o1 = ini_read_string("MAIN MENU" , "ml0o1" , "");
		Text_ml0o2 = ini_read_string("MAIN MENU" , "ml0o2" , "");
		Text_ml0o3 = ini_read_string("MAIN MENU" , "ml0o3" , "");
		Text_ml0o4 = ini_read_string("MAIN MENU" , "ml0o4" , "");

		Text_ml0d0 = ini_read_string("MAIN MENU" , "ml0d0" , "");
		Text_ml0d1 = ini_read_string("MAIN MENU" , "ml0d1" , "");
		Text_ml0d2 = ini_read_string("MAIN MENU" , "ml0d2" , "");
		Text_ml0d3 = ini_read_string("MAIN MENU" , "ml0d3" , "");
		Text_ml0d4 = ini_read_string("MAIN MENU" , "ml0d4" , "");
	
		Text_ml0e0 = ini_read_string("MAIN MENU" , "ml0e0" , "");
		Text_ml0e1 = ini_read_string("MAIN MENU" , "ml0e1" , "");
		Text_ml0e2 = ini_read_string("MAIN MENU" , "ml0e2" , "");
		Text_ml0e3 = ini_read_string("MAIN MENU" , "ml0e3" , "");
		Text_ml0e4 = ini_read_string("MAIN MENU" , "ml0e4" , "");
		
		Text_mtl1 = ini_read_string("1-P MODE" , "mtl1" , "");
		
		Text_ml1o0 = ini_read_string("1-P MODE" , "ml1o0" , "");
		Text_ml1o1 = ini_read_string("1-P MODE" , "ml1o1" , "");
		Text_ml1o2 = ini_read_string("1-P MODE" , "ml1o2" , "");
		Text_ml1o3 = ini_read_string("1-P MODE" , "ml1o3" , "");

		Text_ml1d0 = ini_read_string("1-P MODE" , "ml1d0" , "");
		Text_ml1d1 = ini_read_string("1-P MODE" , "ml1d1" , "");
		Text_ml1d2 = ini_read_string("1-P MODE" , "ml1d2" , "");
		Text_ml1d3 = ini_read_string("1-P MODE" , "ml1d3" , "");
	
		Text_ml1e0 = ini_read_string("1-P MODE" , "ml1e0" , "");
		Text_ml1e2 = ini_read_string("1-P MODE" , "ml1e2" , "");

		Text_mtl2 = ini_read_string("REGULAR MATCH" , "mtl2" , "");
		
		Text_ml2o0 = ini_read_string("REGULAR MATCH" , "ml2o0" , "");
		Text_ml2o1 = ini_read_string("REGULAR MATCH" , "ml2o1" , "");
		Text_ml2o2 = ini_read_string("REGULAR MATCH" , "ml2o2" , "");

		Text_ml2d0 = ini_read_string("REGULAR MATCH" , "ml2d0" , "");
		Text_ml2d1 = ini_read_string("REGULAR MATCH" , "ml2d1" , "");
		Text_ml2d2 = ini_read_string("REGULAR MATCH" , "ml2d2" , "");

		Text_mtl3 = ini_read_string("STADIUM" , "mtl3" , "");
		
		Text_ml3o0 = ini_read_string("STADIUM" , "ml3o0" , "");
		Text_ml3o1 = ini_read_string("STADIUM" , "ml3o1" , "");
		Text_ml3o2 = ini_read_string("STADIUM" , "ml3o2" , "");
		Text_ml3o3 = ini_read_string("STADIUM" , "ml3o3" , "");

		Text_ml3d0 = ini_read_string("STADIUM" , "ml3d0" , "");
		Text_ml3d1 = ini_read_string("STADIUM" , "ml3d1" , "");
		Text_ml3d2 = ini_read_string("STADIUM" , "ml3d2" , "");
		Text_ml3d3 = ini_read_string("STADIUM" , "ml3d3" , "");
	
		Text_ml3e0 = ini_read_string("STADIUM" , "ml3e0" , "");
		Text_ml3e1 = ini_read_string("STADIUM" , "ml3e1" , "");		
		Text_ml3e2 = ini_read_string("STADIUM" , "ml3e2" , "");
		Text_ml3e3 = ini_read_string("STADIUM" , "ml3e3" , "");		

		Text_mtl4 = ini_read_string("VS. MODE" , "mtl4" , "");
		
		Text_ml4o0 = ini_read_string("VS. MODE" , "ml4o0" , "");
		Text_ml4o1 = ini_read_string("VS. MODE" , "ml4o1" , "");
		Text_ml4o2 = ini_read_string("VS. MODE" , "ml4o2" , "");
		Text_ml4o3 = ini_read_string("VS. MODE" , "ml4o3" , "");
		Text_ml4o4 = ini_read_string("VS. MODE" , "ml4o4" , "");

		Text_ml4d0 = ini_read_string("VS. MODE" , "ml4d0" , "");
		Text_ml4d1 = ini_read_string("VS. MODE" , "ml4d1" , "");
		Text_ml4d2 = ini_read_string("VS. MODE" , "ml4d2" , "");
		Text_ml4d3 = ini_read_string("VS. MODE" , "ml4d3" , "");
		Text_ml4d4 = ini_read_string("VS. MODE" , "ml4d4" , "");
		
		Text_mtl5 = ini_read_string("EXTRA" , "mtl5" , "");
		
		Text_ml5o0 = ini_read_string("EXTRA" , "ml5o0" , "");
		Text_ml5o1 = ini_read_string("EXTRA" , "ml5o1" , "");
		Text_ml5o2 = ini_read_string("EXTRA" , "ml5o2" , "");
		Text_ml5o3 = ini_read_string("EXTRA" , "ml5o3" , "");
		Text_ml5o4 = ini_read_string("EXTRA" , "ml5o4" , "");

		Text_ml5d0 = ini_read_string("EXTRA" , "ml5d0" , "");
		Text_ml5d1 = ini_read_string("EXTRA" , "ml5d1" , "");
		Text_ml5d2 = ini_read_string("EXTRA" , "ml5d2" , "");
		Text_ml5d3 = ini_read_string("EXTRA" , "ml5d3" , "");
		Text_ml5d4 = ini_read_string("EXTRA" , "ml5d4" , "");
		
		Text_mtl6 = ini_read_string("OPTIONS" , "mtl6" , "");
		
		Text_ml6o0 = ini_read_string("OPTIONS" , "ml6o0" , "");
		Text_ml6o1 = ini_read_string("OPTIONS" , "ml6o1" , "");
		Text_ml6o2 = ini_read_string("OPTIONS" , "ml6o2" , "");
		Text_ml6o3 = ini_read_string("OPTIONS" , "ml6o3" , "");
		Text_ml6o4 = ini_read_string("OPTIONS" , "ml6o4" , "");

		Text_ml6d0 = ini_read_string("OPTIONS" , "ml6d0" , "");
		Text_ml6d1 = ini_read_string("OPTIONS" , "ml6d1" , "");
		Text_ml6d2 = ini_read_string("OPTIONS" , "ml6d2" , "");
		Text_ml6d3 = ini_read_string("OPTIONS" , "ml6d3" , "");
		Text_ml6d4 = ini_read_string("OPTIONS" , "ml6d4" , "");
		
		Text_mtl7 = ini_read_string("DATA" , "mtl7" , "");
		
		Text_ml7o0 = ini_read_string("DATA" , "ml7o0" , "");
		Text_ml7o1 = ini_read_string("DATA" , "ml7o1" , "");
		Text_ml7o2 = ini_read_string("DATA" , "ml7o2" , "");
		Text_ml7o3 = ini_read_string("DATA" , "ml7o3" , "");
		Text_ml7o4 = ini_read_string("DATA" , "ml7o4" , "");

		Text_ml7d0 = ini_read_string("DATA" , "ml7d0" , "");
		Text_ml7d1 = ini_read_string("DATA" , "ml7d1" , "");
		Text_ml7d2 = ini_read_string("DATA" , "ml7d2" , "");
		Text_ml7d3 = ini_read_string("DATA" , "ml7d3" , "");
		Text_ml7d4 = ini_read_string("DATA" , "ml7d4" , "");
		
		Text_setn0o0 = ini_read_string("SET" , "setn0o0" , "ERROR_SELECT");
		Text_setn1o0 = ini_read_string("SET" , "setn1o0" , "ERROR_SELECT");
		Text_setn2o0 = ini_read_string("SET" , "setn2o0" , "ERROR_SELECT");
		Text_setn3o0 = ini_read_string("SET" , "setn3o0" , "ERROR_SELECT");
		Text_setn4o0 = ini_read_string("SET" , "setn4o0" , "ERROR_SELECT");
		Text_setn0o1 = ini_read_string("SET" , "setn0o1" , "ERROR_TEXT");
		Text_setl0o0 = ini_read_string("SET" , "setl0o0" , "ERROR_ENGLISH");
		Text_setl0o1 = ini_read_string("SET" , "setl0o1" , "ERROR_SPANISH");
		Text_setl0o2 = ini_read_string("SET" , "setl0o2" , "ERROR_PORT");
		Text_setl0o3 = ini_read_string("SET" , "setl0o3" , "ERROR_FREN");
		Text_setl0o4 = ini_read_string("SET" , "setl0o4" , "ERROR_GERMAN");
		Text_setl0o5 = ini_read_string("SET" , "setl0o5" , "ERROR_JAPANESE");
		Text_setl0o6 = ini_read_string("SET" , "setl0o6" , "ERROR_ITALIAN");
		
		Text_setn1o1 = ini_read_string("SET" , "setn1o1" , "ERROR_C");
		Text_setn1o2 = ini_read_string("SET" , "setn1o2" , "ERROR_C");
		Text_setn1o3 = ini_read_string("SET" , "setn1o3" , "ERROR_C");
		Text_setn1o4 = ini_read_string("SET" , "setn1o4" , "ERROR_C");
		Text_setn1o5 = ini_read_string("SET" , "setn1o5" , "SUPER PODERES LAND 7");
		Text_setn1o6 = ini_read_string("SET" , "setn1o6" , "ERROR_C");
		Text_setn1o7 = ini_read_string("SET" , "setn1o7" , "ERROR_C");
		Text_setn1o8 = ini_read_string("SET" , "setn1o8" , "SUPER PODERES MAKER");
		Text_setn1o9 = ini_read_string("SET" , "setn1o9" , "DEFAULT");
		
		Text_b0t0 = ini_read_string("BONUS" , "b0t0" , "SCC2");
		Text_b0t1 = ini_read_string("BONUS" , "b0t1" , "SCC3D");
		Text_b0t2 = ini_read_string("BONUS" , "b0t2" , "SCCREMAKE");
		Text_b0t3 = ini_read_string("BONUS" , "b0t3" , "ERROR");
		
		Text_v0r0 = ini_read_string("VERSUS" , "v0r0" , "ERROR");
		Text_v0r1 = ini_read_string("VERSUS" , "v0r1" , "ERROR");
		Text_v0r2 = ini_read_string("VERSUS" , "v0r2" , "ERROR");
	}
	#endregion
	if (LocalLanguage == 5)
	{
		Control.ActualFont = fntJapanese;
	}
	else
	{
		Control.ActualFont = Control.Font;
	}
	ini_close();
}

///@arg language
function scrLanguageLoadFile(LocalLanguage)
{
	ini_open("l/general.txt");
	var FileName = ini_read_string("general" , "l_"+string(LocalLanguage) , "en");
	ini_close();
	return FileName;
}
