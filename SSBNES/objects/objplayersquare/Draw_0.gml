#region Dibujar
draw_self();
if (scrExiste(ButtonChildren) and Ide != 3)
{
	if (ButtonChildren.ActualRoster != noone)
	{
		sprRosterImage += sprRosterSpeed;
		if (sprRosterImage > sprite_get_number(ButtonChildren.ActualRoster.sprIde))
		{
			sprRosterImage = 0;
		}
		draw_sprite(ButtonChildren.ActualRoster.sprIde , sprRosterImage , x+31 , y+37);
	}
}
#endregion