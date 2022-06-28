#region Act
alarm[3] = 2;
if (scrExiste(ActualRoster))
{
	if (Position > 0)
	{
		if (!scrExiste(ActualRoster.C[Position-1]))
		{
			ActualRoster.C[Position-1] = self;
			ActualRoster.C[Position] = noone;
			Position--;
		}
	}
}
alarm[2] = 1;
#endregion