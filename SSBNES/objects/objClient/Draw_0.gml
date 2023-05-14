#region Draw
for (var i = 0 ; i < 4 ; i++)
{
	if (Visible[i])
	{
		draw_sprite_ext( SpriteIndex[i] , ImageIndex[i] , X[i] , Y[i] , ScaleX[i] , ScaleY[i] , Angle[i] , Color[i] , Alpha[i]);
	}
}
#endregion