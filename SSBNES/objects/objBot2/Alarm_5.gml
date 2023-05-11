#region Detectar vacio
alarm[5] = 3;
if (!Recover)
{
	if (!place_meeting(x , y + 16 , parCollision) and  y > Control.RoomVoidY)
	{
		if (x > room_width/2)
		{
			LeftButtonActive = true;
			RightButtonActive = false;
		}
		else
		{
			LeftButtonActive = false;
			RightButtonActive = true;
		}
		JumpButtonActive = true;
		alarm[3] = 5;
	}
}
#endregion