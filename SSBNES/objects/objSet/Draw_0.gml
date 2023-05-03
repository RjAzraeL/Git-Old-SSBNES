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
		var Visible = true;
		var VisibleText = string_upper(CS[i]);
		if (KeyChange == i)
		{
			VisibleText = "---";
		}
		if (KeyChange == i and !VisibleKey)
		{
			Visible = false;
		}
		if (Visible)
		{
			scrText( 066 , 55 + (16*i) , "╚" + string(string_upper(C[i])) , fa_middle , fa_left , Control.Font , c_black , Color , 8 , room_width , 1 , 1 , 0 , 1);
			scrText( 283 , 55 + (16*i) , "" + string(VisibleText) , fa_middle , fa_right , Control.Font , c_black , Color , 8 , room_width , 1 , 1 , 0 , 1);
		}
	}
	#endregion
	#region Text Controller
	var ColorC = c_white;
	var ColorL = c_white;
	var ColorR = c_white;
	var Color  = c_white;
	if (ControlActual == 8)
	{
		if (LayerHorizontal == 1)
		{
			ColorC = ColorActivo;
			Color = ColorActivo;
			ColorL = c_white;
			ColorR = c_white;
		}
		else if (LayerHorizontal == 0)
		{
			ColorC  = c_white;
			Color = c_white;
			ColorL = ColorActivo;
			ColorR = c_white;
		}
		else if (LayerHorizontal == 2)
		{
			ColorC  = c_white;
			Color = c_white;
			ColorL = c_white;
			ColorR = ColorActivo;
		}
	}
	draw_sprite_ext(sprSetController , ControlActual+1 , CenterX , 198 , 1 , 1 , 0 , ColorC , 1);
	if (ControlActual == 8)
	{
		scrText( CenterX , 198 , "" + string_upper(TextDefault) , fa_middle , fa_center , Control.Font , c_black , Color , 8 , 102 , 1 , 1 , 0 , 1);
	}
	
	draw_sprite_ext(sprSetArrow , 0 , 074 , 203 , -1 , 1 , 0 , ColorL , 1);
	draw_sprite_ext(sprSetArrow , 0 , 282 , 203 , +1 , 1 , 0 , ColorR , 1);
	#endregion
}
#endregion