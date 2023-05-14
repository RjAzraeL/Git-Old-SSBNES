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
		var ChangeBox = false;
		if (Control.StartButtonPressedActive)
		{
			ChangeTitles = true;
			scrSound(sfxButtonOk);
			LayerActual++;
			Active = false;
			ControlActual = 8;
			LayerHorizontal = 0;
			scrFileLanguageSave();
			alarm[0] = 5;
		}
		if (Control.UpButtonPressedActive)
		{
			if (LanguageActual > 0)
			{
				ChangeBox = true;
				Change = true;
				LanguageActual--;
				scrSound(sfxButtonOk);
			}
		}
		if (Control.DownButtonPressedActive)
		{
			if (LanguageActual < 6)
			{
				ChangeBox = true;
				Change = true;
				scrSound(sfxButtonOk);
				LanguageActual++;
			}
		}
		if (Change)
		{
			scrLanguageLoadTexto( LanguageActual );
			Control.LanguageActual = LanguageActual;
			MainText = Language.Text_setn0o0;
			/*TextLanguageExample = Language.Text_setn0o1;
			L[0] = Language.Text_setl0o0;
			L[1] = Language.Text_setl0o1;
			L[2] = Language.Text_setl0o2;
			L[3] = Language.Text_setl0o3;
			L[4] = Language.Text_setl0o4;
			L[5] = Language.Text_setl0o5;
			L[6] = Language.Text_setl0o6;
			*/
		}
		if (ChangeBox)
		{
			ini_open("l/"+string(scrLanguageLoadFile(LanguageActual)+".txt"));
			TextLanguageExample = ini_read_string("SET" , "setn0o1" , "ERROR_TEXT");
			ini_close();
		}
	}
	else if (LayerActual == 1) /*Controls P-1 Layer*/
	{
		if (ChangeTitles)
		{
			KeyChange = -1;
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
		if (KeyChange == -1)
		{
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
				if (ControlActual < 8)
				{
					ActiveChange = false;
					alarm[3] = 10;
					KeyChange = ControlActual;
					scrSound(sfxButtonOk);
				}
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
							case(1):
							{
								scrSound(sfxButtonOk);
								Control.LeftButton = Control.DEFAULT_LeftButton;
								Control.RightButton = Control.DEFAULT_RightButton;
								Control.UpButton = Control.DEFAULT_UpButton;
								Control.DownButton = Control.DEFAULT_DownButton;
								Control.JumpButton = Control.DEFAULT_JumpButton;
								Control.AttackButton = Control.DEFAULT_AttackButton;
								Control.StartButton = Control.DEFAULT_StartButton;
								Control.SelectButton = Control.DEFAULT_SelectButton;
								alarm[0] = 5;
								Active = false;
								KeyChange = -1;
								break;
							}
							case(2):
							{
								LayerHorizontal = 0;
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
		}
		else
		{
			if (keyboard_check_pressed(vk_anykey))
			{
				var Key = keyboard_lastkey;
				var CanChange = (Control.LeftButton != Key) and (Control.RightButton != Key) and (Control.UpButton != Key) and (Control.DownButton != Key) and (Control.JumpButton != Key) and (Control.AttackButton != Key) and (Control.StartButton != Key) and (Control.SelectButton != Key);
				if (CanChange)
				{
					switch (KeyChange)
					{
						case(0):
						{
							Control.LeftButton = Key;
							break;
						}
						case(1):
						{
							Control.RightButton = Key;
							break;
						}
						case(2):
						{
							Control.UpButton = Key;
							break;
						}
						case(3):
						{
							Control.DownButton = Key;
							break;
						}
						case(4):
						{
							Control.JumpButton = Key;
							break;
						}
						case(5):
						{
							Control.AttackButton = Key;
							break;
						}
						case(6):
						{
							Control.StartButton = Key;
							break;
						}
						case(7):
						{
							Control.SelectButton = Key;
							break;
						}
					}
					scrFileKeySave(KeyChange , Key , LayerActual-1);
					alarm[0] = 5;
					Active = false;
					KeyChange = -1;
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
	}
	else if (LayerActual == 2) /*Controls P-2 Layer*/
	{
		if (ChangeTitles)
		{
			KeyChange = -1;
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
		if (KeyChange == -1)
		{
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
				if (ControlActual < 8)
				{
					ActiveChange = false;
					alarm[3] = 10;
					KeyChange = ControlActual;
					scrSound(sfxButtonOk);
				}
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
								MainText = Language.Text_setn1o0;
								TextLanguageExample = Language.Text_setn0o1;
								LayerHorizontal = 2;
								L[0] = Language.Text_setl0o0;
								L[1] = Language.Text_setl0o1;
								L[2] = Language.Text_setl0o2;
								L[3] = Language.Text_setl0o3;
								L[4] = Language.Text_setl0o4;
								L[5] = Language.Text_setl0o5;
								L[6] = Language.Text_setl0o6;
								break;
							}
							case(1):
							{
								scrSound(sfxButtonOk);
								Control._2LeftButton = Control.DEFAULT_2LeftButton;
								Control._2RightButton = Control.DEFAULT_2RightButton;
								Control._2UpButton = Control.DEFAULT_2UpButton;
								Control._2DownButton = Control.DEFAULT_2DownButton;
								Control._2JumpButton = Control.DEFAULT_2JumpButton;
								Control._2AttackButton = Control.DEFAULT_2AttackButton;
								Control._2StartButton = Control.DEFAULT_2StartButton;
								Control._2SelectButton = Control.DEFAULT_2SelectButton;
								alarm[0] = 5;
								Active = false;
								KeyChange = -1;
								break;
							}
							case(2):
							{
								scrFileSetSave();
								room_goto(rm01ScreenTitle);
								ChangeTitles = true;
								scrSound(sfxButtonOk);
								LayerActual++;
								Active = false;
								alarm[0] = 5;
								LayerHorizontal = 0;
								break;
							}
						}
						break;
					}
				}
			}
		}
		else
		{
			if (keyboard_check_pressed(vk_anykey))
			{
				var Key = keyboard_lastkey;
				var CanChange = (Control._2LeftButton != Key) and (Control._2RightButton != Key) and (Control._2UpButton != Key) and (Control._2DownButton != Key) and (Control._2JumpButton != Key) and (Control._2AttackButton != Key) and (Control._2StartButton != Key) and (Control._2SelectButton != Key);
				if (CanChange)
				{
					switch (KeyChange)
					{
						case(0):
						{
							Control._2LeftButton = Key;
							break;
						}
						case(1):
						{
							Control._2RightButton = Key;
							break;
						}
						case(2):
						{
							Control._2UpButton = Key;
							break;
						}
						case(3):
						{
							Control._2DownButton = Key;
							break;
						}
						case(4):
						{
							Control._2JumpButton = Key;
							break;
						}
						case(5):
						{
							Control._2AttackButton = Key;
							break;
						}
						case(6):
						{
							Control._2StartButton = Key;
							break;
						}
						case(7):
						{
							Control._2SelectButton = Key;
							break;
						}
					}
					scrFileKeySave(KeyChange , Key , LayerActual-1);
					alarm[0] = 5;
					Active = false;
					KeyChange = -1;
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
	}
	else if (LayerActual == 3) /*Graphics Layer*/
	{
		if (ChangeTitles)
		{
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