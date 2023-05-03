#region Section Izq Der
SectionIzqDer = lerp(SectionIzqDer , SectionIzqDerObjetivo , .25);
#endregion
#region Change things
if (Active)
{
	if (LayerActual == 0) /*Language Layer*/
	{
		var Change = false;
		if (Control.StartButtonActive)
		{
			scrSound(sfxButtonOk);
			LayerActual++;
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
	if (LayerActual == 1) /*Controls P-1 Layer*/
	{
		var Change = false;
		if (Control.StartButtonActive)
		{
			scrSound(sfxButtonOk);
			LayerActual++;
		}
		if (keyboard_check_pressed(vk_escape))
		{
			scrSound(sfxButtonOk);
			LayerActual--;
		}
	}
	if (LayerActual == 2) /*Controls P-2 Layer*/
	{
		var Change = false;
		if (Control.StartButtonActive)
		{
			scrSound(sfxButtonOk);
			LayerActual++;
		}
		if (keyboard_check_pressed(vk_escape))
		{
			scrSound(sfxButtonOk);
			LayerActual--;
		}
	}
	if (LayerActual == 3) /*Graphics Layer*/
	{
		var Change = false;
		if (keyboard_check_pressed(vk_escape))
		{
			scrSound(sfxButtonOk);
			LayerActual--;
		}
	}
}
#endregion