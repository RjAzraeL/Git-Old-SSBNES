#region Change language
if (Active)
{
	if (Control.UpButtonPressedActive)
	{
		if (LanguageActual > 0)
		{
			LanguageActual--;
			scrSound(sfxButtonOk);
		}
	}
	if (Control.DownButtonPressedActive)
	{
		if (LanguageActual < 6)
		{
			scrSound(sfxButtonOk);
			LanguageActual++;
		}
	}
}
#endregion