#region Draw title
scrText( CenterX , 27 , string_upper(MainText) , fa_middle , fa_center , Control.Font , c_black , c_white , 8 , room_width , 1 , 1 , 0 , 1 );
#endregion
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
scrText( room_width/2 , 196 , string_upper(TextLanguageExample) , fa_middle , fa_center , Control.Font , c_black , c_white , 9 , 238 , 1 , 1 , 0 , 1);
#endregion