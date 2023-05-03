#region Draw title
scrText( CenterX , 27 , string_upper(MainText) , fa_middle , fa_center , Control.Font , c_black , c_white , 8 , room_width , 1 , 1 , 0 , 1 );
#endregion
#region Layer general
for (var i = 0 ; i < LayerTotal ; i++)
{
	
	var Index = 0;
	if (i < LayerActual)
	{
		Index = 0;
	}
	else if (i == LayerActual)
	{
		Index = 1;
		draw_sprite_ext(sprSetSectionIzqDer , Index , 124 - SectionIzqDer + (24 * i) , 12 , 1 , 1 , 0 , c_white , 1);
		draw_sprite_ext(sprSetSectionIzqDer , Index , 136 + SectionIzqDer + (24 * i) , 12 , -1 , 1 , 0 , c_white , 1);
	}
	else
	{
		Index = 2;
	}
	draw_sprite_ext(sprSetSection , Index , 130 + (24 * i) , 12 , 1 , 1 , 0 , c_white , 1);
}
#endregion
#region Layer 0
if (LayerActual == 0)
{
	#region Select language
	for (var i = 0 ; i < 7 ; i++)
	{
		var Color = c_white;
		if (LanguageActual == i)
		{
			Color = ColorActivo;
			draw_sprite_ext(sprSetBarra , 0 , room_width/2 , 55 + (16*i) , 1 , 1 , 0 , c_white , 1);
		}
		scrText( 133 , 55 + (16*i) , "╚" + string(string_upper(L[i])) , fa_middle , fa_left , Control.Font , c_black , Color , 8 , room_width , 1 , 1 , 0 , 1);
	}
	#endregion
	#region Text language
	draw_sprite_ext(sprSetTextBox1 , 0 , room_width/2 , 196 , 1 , 1 , 0 , c_white , 1);
	scrText( room_width/2 , 197 , string_upper(TextLanguageExample) , fa_middle , fa_center , Control.Font , c_black , c_white , 9 , 238 , 1 , 1 , 0 , 1);
	#endregion
}
#endregion
#region Layer 1
if (LayerActual == 1)
{
	#region Select language
	for (var i = 0 ; i < ControlTotal ; i++)
	{
		var Color = c_white;
		if (ControlActual == i)
		{
			Color = ColorActivo;
			draw_sprite_ext(sprSetBarra , 0 , room_width/2 , 55 + (16*i) , 1 , 1 , 0 , c_white , 1);
		}
		scrText( 66 , 55 + (16*i) , "╚" + string(string_upper(C[i])) , fa_middle , fa_left , Control.Font , c_black , Color , 8 , room_width , 1 , 1 , 0 , 1);
	}
	#endregion
	#region Text language
	//draw_sprite_ext(sprSetTextBox1 , 0 , room_width/2 , 196 , 1 , 1 , 0 , c_white , 1);
	//scrText( room_width/2 , 197 , string_upper(TextLanguageExample) , fa_middle , fa_center , Control.Font , c_black , c_white , 9 , 238 , 1 , 1 , 0 , 1);
	#endregion
}
#endregion