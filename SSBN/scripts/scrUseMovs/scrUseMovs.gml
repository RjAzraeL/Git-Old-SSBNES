function scrUseMovs()
{
	#region Ground - Neutral
	if (!Attacking and Damaged == 0)
	{
		if (AttackButtonPressedActive)
		{
			if (scrSolidDetectorBelow()) 
			{
				switch(MovGroundNeutral)
				{
					case(0):
					{
						if (scrCheckObjectAmount(self , objCombatFireball) < 2)
						{
							scrAddMov(0 , 2 , self);
							Attacking = true;
							SpriteAttacking = SpriteAttackGroundNeutral;
							image_speed = .25;
							image_index = 0;
							RootAttack = scrDameDato(Control.MovList , 0 , "Root");
						}
					}
				}
			}
		}
	}
	#endregion
}