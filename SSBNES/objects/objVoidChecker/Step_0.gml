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
visible = true;
if (place_meeting(x , y , parCollision) or y < Control.VoidLimitStage)
{
	visible = false;
}
#endregion