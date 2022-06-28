#region Set var
Ide = 0;
CirclesIn = 0;
image_speed = 0;
image_index = 0;
sprIde = sprChSandbagIdle;
for (var i = 0 ; i < 4 ; i++)
{
	X[i] = 0;
	Y[i] = 0;
	C[i] = noone;
}

#region Search Character
for (var i = 0 ; i < ds_list_size(Control.CharacterList) ; i++)
{
	if (scrDameDato(Control.CharacterList , i , "Roster id") == Ide)
	{
		
	}
}
#endregion

#endregion