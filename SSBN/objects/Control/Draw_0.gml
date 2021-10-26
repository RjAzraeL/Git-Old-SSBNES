#region Draw
if (!CreateBot)
{
	scrSimpleText(scrX() + 128 , scrY() + 24 , "Use 'B' to summon a bot");
}
var Largo = 64;
var Y = 176;
for (var i = 0 ; i < TotalCharacters ; i++)
{
	draw_sprite(sprHudBody , 0 , scrX() + 2 + Largo * (i) , scrY() + Y );
	var Number = "00" + string(CharacterPorcentage[i]);
	var RealNumber = "";
	RealNumber += string_char_at( Number , string_length(Number)-2 );
	RealNumber += string_char_at( Number , string_length(Number)-1 );
	RealNumber += string_char_at( Number , string_length(Number) );
	scrText(scrX() + 22 + Largo * i , scrY() + Y + 20 , RealNumber , fa_center , fa_left , FontPorcentage , c_white , c_white , 32 , 400 , 1 , 1 , 0 , 1);
	
	draw_sprite(sprHudBody2 , scrDameDato(Control.CharacterList , CharacterId[i] , "Hud Index") , scrX() + 2 + Largo * (i) , scrY() + Y );
	draw_sprite(sprHudBody , 1 , scrX() + 2 + Largo * (i) , scrY() + Y );
	
	for (var j = 0 ; j < CharacterLife[i] ; j++)
	{
		draw_sprite_ext(sprHudIcons , CharacterId[i]+1 , scrX() + 2 + Largo * i + (j*10) , scrY() + Y + 34 , 1 , 1 , 0 , c_white , 1);
	}
}
#endregion