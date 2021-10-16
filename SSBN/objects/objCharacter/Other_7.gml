#region Especiales de sprites
if (sprite_index = sprChMarioJump2 and !AnimacionSaltoTerminada)
{
	AnimacionSaltoTerminada = true;
	sprite_index = sprChMarioJump;
}
if (sprite_index = SprChKirbyFalling)
{
	sprite_index = SprChKirbyFalling2;
}
#endregion