function scrSearchRival(Me)
{
	var RivalReturn = noone;
	var CantidadDeRivales = instance_number(objCharacter);
	for (var i = 0 ; i < CantidadDeRivales ; i++)
	{
		var Rival = instance_find(objCharacter , i);
		if (Rival.id != Me.id)
		{
			if (scrExiste(RivalReturn))
			{
				if (!RivalReturn.Inmune)
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
			}
			else
			{
				RivalReturn = Rival;
			}
		}
	}
	return RivalReturn;
}