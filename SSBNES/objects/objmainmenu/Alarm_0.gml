#region Actual Button
with (objMainMenuButton)
{
	image_index = 0;
	Color = make_color_rgb(248 , 184 , 0);
	if (objMainMenu.ActualButton == Id)
	{
		image_index = 1;
		Color = c_black;
	}
}
#endregion