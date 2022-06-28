#region Search Character
for (var i = 0 ; i < ds_list_size(Control.CharacterList) ; i++)
{
	if (scrDameDato(Control.CharacterList , i , "Roster id") == Ide)
	{
		sprIde = scrGetSpriteIndexGeneric(i , "Idle");
	}
}
#endregion