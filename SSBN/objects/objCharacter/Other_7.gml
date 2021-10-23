#region Especiales de sprites
if (sprite_index = sprChMarioJump2 and !AnimacionSaltoTerminada)
{
	AnimacionSaltoTerminada = true;
	sprite_index = sprChMarioJump;
}
if (sprite_index = sprChKirbyFalling)
{
	sprite_index = sprChKirbyFalling2;
}
if (sprite_index = SpriteDuck)
{
	image_index = image_number-1;
	image_speed = 0;
}
if (Attacking)
{
	Attacking = false;
}
#endregion