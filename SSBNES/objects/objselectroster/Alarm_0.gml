#region Search Character
if (Ide != 36)
{
	for (var i = 0 ; i < ds_list_size(Control.CharacterList) ; i++)
	{
		if (scrDameDato(Control.CharacterList , i , "Roster id") == Ide)
		{
			sprIde = scrGetSpriteIndexGeneric(i , "Idle");
			namIde = scrDameDato(Control.CharacterList , i , "Name");
		}
	}
}
else
{
	sprIde = sprRandom;
}
#endregion