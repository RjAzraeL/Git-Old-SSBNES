function scrUseMovs()
{
	#region Ground - Neutral
	if (!Attacking)
	{
		if (Control.AttackButtonPressed)
		{
			switch(MovGroundNeutral)
			{
				case(0):
				{
					scrAddMov(0 , 2 , self);
					Attacking = true;
					SpriteAttacking = SpriteAttackGroundNeutral;
					image_speed = .25;
					image_index = 0;
				}
			}
		}
	}
	#endregion
}