#region Check void
if (scrExiste(Master))
{
	var Y = Master.y + sprite_get_height(Master.sprite_index)/2;
	x = Master.x;
	y = Y;
	image_yscale = room_height - 8 - Y;
}
else
{
	instance_destroy();
}
if (scrExiste(Master))
{
	visible = true;
	if (place_meeting(x , y , parCollision) or y < Control.VoidLimitStage or (place_meeting(Master.x,Master.y+4,parCollision)) or Master.VerticalMovement == 0)
	{
		visible = false;
	}
}
#endregion