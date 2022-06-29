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
		IdeCharacter = ButtonChildren.ActualRoster.ChrIde;
		draw_sprite(ButtonChildren.ActualRoster.sprIde , sprRosterImage , x+31 , y+37);
		scrText(x + 31 , y + 83 , ButtonChildren.ActualRoster.namIde , fa_middle , fa_center , Control.Font , c_black , c_white , 32 , 256 , .75 , .75 , 0 , 1);
	}
}
#endregion