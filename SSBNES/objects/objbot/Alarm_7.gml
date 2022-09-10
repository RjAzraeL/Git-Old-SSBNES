#region Change mentality
alarm[7] = 180;
Mentality = choose("Close" , "Range");

if (SetColor)
{
	SetColor = false;
	switch(Position)
	{
		case(0):
		{
			image_blend = c_white;
			break;
		}
		case(1):
		{
			image_blend = c_blue;
			break;
		}
		case(2):
		{
			image_blend = c_green;
			break;
		}
		case(3):
		{
			image_blend = c_yellow;
			break;
		}
	}
}
#endregion