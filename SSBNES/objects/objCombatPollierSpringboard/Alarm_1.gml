#region Bips
alarm[0] = 15 - Bips;
visible = !visible;
Bips--;
if (Bips <= 0)
{
	instance_destroy();
}
#endregion