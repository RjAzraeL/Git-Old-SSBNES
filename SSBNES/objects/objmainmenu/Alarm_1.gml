#region Create
Cap = -1;
for (var i = 0 ; i < 5 ; i++)
{
	if (ButtonA[i] != "")
	{
		Cap++;
		var Button = instance_create_depth(153 + ButtonX[i] , 65 + 20 * i , 0 , objMainMenuButton);
		Button.image_speed = 0;
		Button.image_index = 0;
		Button.Id = i;
		Button.Text = ButtonA[i];
		Button.Desc = ButtonD[i];
		Button.Extra = ButtonE[i];
	}
}
alarm[0] = 1;
#endregion