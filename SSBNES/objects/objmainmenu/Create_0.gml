#region Set variable
var X = -4;
ButtonX[0] = X;
ButtonX[1] = X - 16;
ButtonX[2] = X - 32;
ButtonX[3] = X - 16;
ButtonX[4] = X - 32;
ButtonT[0] = "1-P Mode";
ButtonT[1] = "VS. Mode";
ButtonT[2] = "Cards";
ButtonT[3] = "Options";
ButtonT[4] = "Data";
ActualButton = 0;
CooldownButton = 0;
for (var i = 0 ; i < 5 ; i++)
{
	var Button = instance_create_depth(153 + ButtonX[i] , 65 + 20 * i , 0 , objMainMenuButton);
	Button.image_speed = 0;
	Button.image_index = 0;
	Button.Id = i;
	Button.Text = ButtonT[i];
}
alarm[0] = 1;
#endregion