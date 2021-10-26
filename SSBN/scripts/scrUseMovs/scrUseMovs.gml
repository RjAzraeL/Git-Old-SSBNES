function scrUseMovs()
{
	#region Ground - Neutral
	if (!Attacking and Damaged == 0)
	{
		if (scrSolidDetectorBelow()) 
		{
			if (AttackButtonPressedActive and HorizontalMovement == 0)
			{
				switch(MovGroundNeutral)
				{
					case(0):
					{
						if (scrCheckObjectAmount(self , objCombatFireball) < 2)
						{
							scrAddMov(0 , 2 , self);
							Attacking = true;
							AttackingHold = scrDameDato(Control.MovList , 0 , "Is Smash");
							AttackingHoldIndex = 0;
							SpriteAttacking = SpriteAttackGroundNeutral;
							image_speed = .25;
							image_index = 0;
							RootAttack = scrDameDato(Control.MovList , 0 , "Root");
						}
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and HorizontalMovement != 0)
			{
				switch(MovGroundSide)
				{
					case(1):
					{
						scrAddMov(1 , 3 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , 1 , "Is Smash");
						AttackingHoldIndex = 1;
						SmashMaxPower = scrDameDato(Control.MovList , 1 , "Max Power");
						SmashGrownPower = .25;
						SpriteAttacking = SpriteAttackGroundSide;
						SmashActualPower = scrDameDato(Control.MovList , 1 , "Power");
						image_speed = .25;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , 1 , "Root");
						break;
					}
				}
			}
		}
	}
	if (Attacking and Damaged == 0)
	{
		if (AttackingHold)
		{
			if (SmashActualPower < SmashMaxPower)
			{
				SmashActualPower += SmashGrownPower;
			}
		}
		if (AttackButtonReleasedActive and AttackingHold)
		{
			AttackingHold = false;
		}
	}
	#endregion
}