#region Detectar vacio
alarm[5] = 5;
if (!place_meeting(x , y + 16 , parCollision) and  y > Control.RoomVoidY)
{
	JumpButtonActive = true;
	alarm[3] = 5;
}
#endregion