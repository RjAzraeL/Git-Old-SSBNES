#region Dibujar
draw_self();
if (scrExiste(ButtonChildren))
{
	if (ButtonChildren.ActualRoster != noone)
	{
		sprRosterImage += sprRosterSpeed;
		if (sprRosterImage > sprite_get_number(sprChMarioIdle))
		{
			sprRosterImage = 0;
		}
		draw_sprite(sprChMarioIdle , sprRosterImage , x+31 , y+37);
	}
}
#endregion