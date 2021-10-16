#region Especiales de sprites
if (sprite_index = sprChMarioJump2 and !AnimacionSaltoTerminada)
{
	AnimacionSaltoTerminada = true;
	sprite_index = sprChMarioJump;
}
#endregion