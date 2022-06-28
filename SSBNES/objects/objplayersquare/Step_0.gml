#region Image
image_index = Ide;
#endregion
#region Check
Ready = false;
if (scrExiste(ButtonChildren) and Ide != 3)
{
	if (ButtonChildren.ActualRoster != noone)
	{
		Ready = true;
	}
}
#endregion