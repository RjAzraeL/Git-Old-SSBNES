function scrUseMovs()
{
	#region Ground - Neutral
	if ((!Attacking and TimeAttacking == 0) and Damaged == 0)
	{
		if (scrSolidDetectorBelow()) 
		{
			if (AttackButtonPressedActive and abs(HorizontalMovement) < 0.5 and (!DownButtonActive) and (!UpButtonActive))
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
							CooldownJump = 0;
						}
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (scrFowardButtonActive(self)))
			{
				switch(MovGroundSmashSide)
				{
					case(1):
					{
						scrAddMov(1 , 3 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , 1 , "Is Smash");
						AttackingHoldIndex = 1;
						SmashMaxPower = scrDameDato(Control.MovList , 1 , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteSmashGroundSide;
						SmashActualPower = scrDameDato(Control.MovList , 1 , "Power");
						image_speed = .25;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , 1 , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (DownButtonActive) and TimeButtonDown != 0)
			{
				switch(MovGroundSmashDown)
				{
					case(2):
					{
						scrAddMov(2 , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , 2 , "Is Smash");
						AttackingHoldIndex = 0;
						SmashMaxPower = scrDameDato(Control.MovList , 2 , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteSmashGroundDown;
						SmashActualPower = scrDameDato(Control.MovList , 2 , "Power");
						image_speed = .5;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , 2 , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (UpButtonActive) and TimeButtonUp != 0)
			{
				switch(MovGroundSmashUp)
				{
					case(3):
					{
						scrAddMov(3 , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , 3 , "Is Smash");
						AttackingHoldIndex = 0;
						SmashMaxPower = scrDameDato(Control.MovList , 3 , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteSmashGroundUp;
						SmashActualPower = scrDameDato(Control.MovList , 3 , "Power");
						image_speed = .5;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , 3 , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and abs(HorizontalMovement) > 0.5 and (!DownButtonActive) and (!UpButtonActive))
			{
				switch(MovGroundAttackSide)
				{
					case(4):
					{
						var Ide = 4;
						scrAddMov(Ide , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , Ide , "Is Smash");
						AttackingHoldIndex = 0;
						SmashMaxPower = scrDameDato(Control.MovList , Ide , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackGroundSide;
						SmashActualPower = scrDameDato(Control.MovList , Ide , "Power");
						image_speed = .5;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (DownButtonActive) and TimeButtonDown == 0)
			{
				switch(MovGroundAttackDown)
				{
					case(5):
					{
						var Ide = 5;
						scrAddMov(Ide , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , Ide , "Is Smash");
						AttackingHoldIndex = 0;
						SmashMaxPower = scrDameDato(Control.MovList , Ide , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackGroundDown;
						SmashActualPower = scrDameDato(Control.MovList , Ide , "Power");
						image_speed = .5;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (UpButtonActive) and TimeButtonUp == 0)
			{
				switch(MovGroundAttackUp)
				{
					case(6):
					{
						var Ide = 6;
						scrAddMov(Ide , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , Ide , "Is Smash");
						AttackingHoldIndex = 0;
						SmashMaxPower = scrDameDato(Control.MovList , Ide , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackGroundUp;
						SmashActualPower = scrDameDato(Control.MovList , Ide , "Power");
						image_speed = .5;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
		}
		else
		{
			if (AttackButtonPressedActive and (!DownButtonActive) and (!UpButtonActive))
			{
				switch(MovAerialNeutral)
				{
					case(7):
					{
						var Ide = 7;
						scrAddMov(Ide , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , Ide , "Is Smash");
						AttackingHoldIndex = 0;
						SmashMaxPower = scrDameDato(Control.MovList , Ide , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackAerialNeutral;
						SmashActualPower = scrDameDato(Control.MovList , Ide , "Power");
						image_speed = .5;
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
		}
	}
	if ((Attacking or TimeAttacking > 0) and Damaged == 0)
	{
		if (AttackingHold)
		{
			TimeHolding++;
			if (SmashActualPower < SmashMaxPower)
			{
				SmashActualPower += SmashGrownPower;
			}
		}
		if (TimeHolding >= 120)
		{
			TimeHolding = 0;
			scrHoldMov();
		}
		if (AttackButtonReleasedActive and AttackingHold)
		{
			TimeHolding = 0;
			scrHoldMov();
		}
	}
	#endregion
}

function scrHoldMov()
{
	AttackingHold = false;
	for (var i = 0 ; i < ds_list_size(MyMovs) ; i++)
	{
		var Mov = ds_list_find_value(MyMovs , i);
		if (scrExiste(Mov))
		{
			Mov.RefreshPower = true;
		}
	}
}