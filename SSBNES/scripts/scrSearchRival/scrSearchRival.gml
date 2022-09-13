function scrSearchRival(Me)
{
	var RivalReturn = noone;
	var CantidadDeRivales = instance_number(objCharacter);
	if (scrExiste(Me.RevengeEntity))
	{
		return Me.RevengeEntity;
	}
	for (var i = 0 ; i < CantidadDeRivales ; i++)
	{
		var Rival = instance_find(objCharacter , i);
		if (Rival.id != Me.id)
		{
			if (scrExiste(Rival))
			{
				if (!Rival.Inmune)
				{
					if (scrExiste(RivalReturn))
					{
						if (Control.CharacterLife[Rival.Position] < Control.CharacterLife[RivalReturn.Position])
						{
							RivalReturn = Rival;
						}
						else if (Control.CharacterLife[Rival.Position] == Control.CharacterLife[RivalReturn.Position])
						{
							if (Control.CharacterPorcentage[Rival.Position] > Control.CharacterPorcentage[RivalReturn.Position])
							{
								RivalReturn = Rival;
							}
						}
					}
					else
					{
						RivalReturn = Rival;
					}
				}
			}
		}
	}
	return RivalReturn;
}