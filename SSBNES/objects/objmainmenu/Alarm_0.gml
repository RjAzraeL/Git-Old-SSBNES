#region Actual Button
with (objMainMenuButton)
{
	image_index = 0;
	Color = c_yellow;
	if (objMainMenu.ActualButton == Id)
	{
		image_index = 1;
		Color = c_black;
	}
}
#endregion