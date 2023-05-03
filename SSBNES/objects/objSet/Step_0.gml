#region Section Izq Der
SectionIzqDer = lerp(SectionIzqDer , SectionIzqDerObjetivo , .25);
#endregion
#region Change things
if (Active)
{
	if (LayerActual == 0) /*Language Layer*/
	{
		if (ChangeTitles)
		{
			LayerHorizontal = 1;
			MainText = Language.Text_setn0o0;
			ChangeTitles = false;
		}
		var Change = false;
		if (Control.StartButtonPressedActive)
		{
			ChangeTitles = true;
			scrSound(sfxButtonOk);
			LayerActual++;
			Active = false;
			alarm[0] = 5;
		}
		if (Control.UpButtonPressedActive)
		{
			if (LanguageActual > 0)
			{
				Change = true;
				LanguageActual--;
				scrSound(sfxButtonOk);
			}
		}
		if (Control.DownButtonPressedActive)
		{
			if (LanguageActual < 6)
			{
				Change = true;
				scrSound(sfxButtonOk);
				LanguageActual++;
			}
		}
		if (Change)
		{
			scrLanguageLoadTexto( LanguageActual );
		
			MainText = Language.Text_setn0o0;
			TextLanguageExample = Language.Text_setn0o1;
			L[0] = Language.Text_setl0o0;
			L[1] = Language.Text_setl0o1;
			L[2] = Language.Text_setl0o2;
			L[3] = Language.Text_setl0o3;
			L[4] = Language.Text_setl0o4;
			L[5] = Language.Text_setl0o5;
			L[6] = Language.Text_setl0o6;
		}
	}
	else if (LayerActual == 1) /*Controls P-1 Layer*/
	{
		if (ChangeTitles)
		{
			LayerHorizontal = 1;
			MainText = Language.Text_setn1o0;
			ChangeTitles = false;
			
			C[0] = Language.Text_setn1o1;
			C[1] = Language.Text_setn1o2;
			C[2] = Language.Text_setn1o3;
			C[3] = Language.Text_setn1o4;
			C[4] = Language.Text_setn1o5;
			C[5] = Language.Text_setn1o6;
			C[6] = Language.Text_setn1o7;
			C[7] = Language.Text_setn1o8;
			TextDefault = Language.Text_setn1o9;
			
		}
		var Change = false;
		if (Control.UpButtonPressedActive)
		{
			if (ControlActual > 0)
			{
				Change = true;
				ControlActual--;
				scrSound(sfxButtonOk);
			}
		}
		if (Control.DownButtonPressedActive)
		{
			if (ControlActual < ControlTotal)
			{
				Change = true;
				scrSound(sfxButtonOk);
				ControlActual++;
			}
		}
		if (Control.StartButtonPressedActive)
		{
			switch (ControlActual)
			{
				case(8):
				{
					switch (LayerHorizontal)
					{
						case(0):
						{
							ChangeTitles = true;
							scrSound(sfxButtonOk);
							LayerActual--;
							scrLanguageLoadTexto( LanguageActual );
							MainText = Language.Text_setn0o0;
							TextLanguageExample = Language.Text_setn0o1;
							L[0] = Language.Text_setl0o0;
							L[1] = Language.Text_setl0o1;
							L[2] = Language.Text_setl0o2;
							L[3] = Language.Text_setl0o3;
							L[4] = Language.Text_setl0o4;
							L[5] = Language.Text_setl0o5;
							L[6] = Language.Text_setl0o6;
							break;
						}
						case(2):
						{
							ChangeTitles = true;
							scrSound(sfxButtonOk);
							LayerActual++;
							Active = false;
							alarm[0] = 5;
							break;
						}
					}
					break;
				}
			}
		}
		if (ControlActual == 8)
		{
			if (Control.LeftButtonPressedActive)
			{
				if (LayerHorizontal > 0)
				{
					scrSound(sfxButtonOk);
					LayerHorizontal--;
				}
			}
			if (Control.RightButtonPressedActive)
			{
				if (LayerHorizontal < LayerHorizontalTotal)
				{
					scrSound(sfxButtonOk);
					LayerHorizontal++;
				}
			}
		}
		if (keyboard_check_pressed(vk_escape))
		{
			ChangeTitles = true;
			scrSound(sfxButtonOk);
			LayerActual--;
			
			scrLanguageLoadTexto( LanguageActual );
		
			MainText = Language.Text_setn0o0;
			TextLanguageExample = Language.Text_setn0o1;
			L[0] = Language.Text_setl0o0;
			L[1] = Language.Text_setl0o1;
			L[2] = Language.Text_setl0o2;
			L[3] = Language.Text_setl0o3;
			L[4] = Language.Text_setl0o4;
			L[5] = Language.Text_setl0o5;
			L[6] = Language.Text_setl0o6;
			
		}
	}
	else if (LayerActual == 2) /*Controls P-2 Layer*/
	{
		if (ChangeTitles)
		{
			LayerHorizontal = 1;
			MainText = Language.Text_setn2o0;
			ChangeTitles = false;
			
			C[0] = Language.Text_setn1o1;
			C[1] = Language.Text_setn1o2;
			C[2] = Language.Text_setn1o3;
			C[3] = Language.Text_setn1o4;
			C[4] = Language.Text_setn1o5;
			C[5] = Language.Text_setn1o6;
			C[6] = Language.Text_setn1o7;
			C[7] = Language.Text_setn1o8;
			TextDefault = Language.Text_setn1o9;
		}
		var Change = false;
		if (Control.UpButtonPressedActive)
		{
			if (ControlActual > 0)
			{
				Change = true;
				ControlActual--;
				scrSound(sfxButtonOk);
			}
		}
		if (Control.DownButtonPressedActive)
		{
			if (ControlActual < ControlTotal)
			{
				Change = true;
				scrSound(sfxButtonOk);
				ControlActual++;
			}
		}
		if (Control.StartButtonPressedActive)
		{
			ChangeTitles = true;
			scrSound(sfxButtonOk);
			LayerActual++;
			Active = false;
			alarm[0] = 5;
		}
		if (keyboard_check_pressed(vk_escape))
		{
			ChangeTitles = true;
			scrSound(sfxButtonOk);
			LayerActual--;
		}
	}
	else if (LayerActual == 3) /*Graphics Layer*/
	{
		if (ChangeTitles)
		{
			LayerHorizontal = 1;
			MainText = Language.Text_setn3o0;
			ChangeTitles = false;
		}
		var Change = false;
		if (keyboard_check_pressed(vk_escape))
		{
			ChangeTitles = true;
			scrSound(sfxButtonOk);
			LayerActual--;
		}
	}
}
#endregion