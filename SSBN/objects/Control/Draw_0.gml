#region Draw
if (!CreateBot)
{
	scrSimpleText(scrX() + 128 , scrY() + 24 , "Use 'B' to summon a bot");
}
for (var i = 0 ; i < TotalCharacters ; i++)
{
	draw_sprite(sprHudBody , 0 , scrX() + 8 + 70 * (i) , scrY() + 183 );
	draw_sprite(sprHudBody2 , scrDameDato(Control.CharacterList , CharacterId[i] , "Hud Index") , scrX() + 8 + 70 * (i) , scrY() + 183 );
	draw_sprite(sprHudBody , 1 , scrX() + 8 + 70 * (i) , scrY() + 183 );
	scrText(scrX() + 8 + 90 * i , scrY() + 203 , string_format(CharacterPorcentage[i] , 3 , 2) , fa_center , fa_left , FontPorcentage , c_white , c_white , 32 , 400 , 1 , 1 , 0 , 1);
}
#endregion