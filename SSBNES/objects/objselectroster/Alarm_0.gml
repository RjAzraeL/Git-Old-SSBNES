#region Search Character
if (Ide != 36)
{
	for (var i = 0 ; i < ds_list_size(Control.CharacterList) ; i++)
	{
		if (scrDameDato(Control.CharacterList , i , "Roster id") == Ide)
		{
			sprIde = scrGetSpriteIndexGeneric(i , "Idle");
		}
	}
}
else
{
	sprIde = sprRandom;
}
#endregion