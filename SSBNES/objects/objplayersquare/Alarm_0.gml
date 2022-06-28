#region Children
with (objSelectorCircle)
{
	if (Ide == other.Slot)
	{
		other.ButtonChildren = self;
	}
}
#endregion