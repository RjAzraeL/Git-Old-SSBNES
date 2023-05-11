#region Bips
alarm[0] = 20 - (Bips*2);
visible = !visible;
Bips--;
if (Bips <= 0)
{
	instance_destroy();
}
#endregion