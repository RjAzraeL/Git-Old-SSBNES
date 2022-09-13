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
						switch (Me.ChaseStyle)
						{
							case("Go max"):
							{
								if (Control.CharacterLife[Rival.Position] > Control.CharacterLife[RivalReturn.Position])
								{
									RivalReturn = Rival;
								}
								else if (Control.CharacterLife[Rival.Position] == Control.CharacterLife[RivalReturn.Position])
								{
									if (Control.CharacterPorcentage[Rival.Position] < Control.CharacterPorcentage[RivalReturn.Position])
									{
										RivalReturn = Rival;
									}
								}
								break;
							}
							case("Go min"):
							default:
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
								break;
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