function scrUseMovs()
{
	#region Ground - Neutral
	if ((Attacking or TimeAttacking != 0) and AttackButtonPressedActive)
	{
		switch(ActualMov)
		{
			case(10):
			{
				var Value = 4;
				if (!place_meeting(x , y - Value , parSolid) and !place_meeting(x , y - Value , objBlockSlope45))
				{
					y -= Value;
				}
				VerticalMovement = 0;
				break;
			}
		}
	}
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
							scrPrepareMov(0 , false , SpriteAttackGroundNeutral , 2);
						}
						break;
					}
					case(12):
					{
						if (scrCheckObjectAmount(self , objCombatNormalEgg) < 2)
						{
							scrPrepareMov(12 , false , SpriteAttackGroundNeutral , 3);
						}
						break;
					}
					case(13):
					{
						if (scrCheckObjectAmount(self , objCombatSpikeEgg) < 2)
						{
							scrPrepareMov(13 , false , SpriteAttackGroundNeutral , 3);
						}
						break;
					}
					case(14):
					{
						if (scrCheckObjectAmount(self , objCombatShuriken) < 3)
						{
							scrPrepareMov(14 , false , SpriteAttackGroundNeutral , 3);
						}
						break;
					}
					case(15):
					{
						if (scrCheckObjectAmount(self , objCombatShuriken) < 1)
						{
							scrPrepareMov(15 , false , SpriteAttackGroundNeutral , 3);
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
						scrPrepareMov(1 , false , SpriteSmashGroundSide , 3);
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
						scrPrepareMov(2 , false , SpriteSmashGroundDown , 0);
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
						SpriteAttackingSpeed = scrDameDato(Control.MovList , 3 , "Animation Speed");
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
						SpriteAttackingSpeed = scrDameDato(Control.MovList , Ide , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (DownButtonActive) and TimeButtonDown == 0 and TimeButtonUp == 0)
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
						SpriteAttackingSpeed = scrDameDato(Control.MovList , Ide , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						break;
					}
				}
			}
			else if (AttackButtonPressedActive and (UpButtonActive) and TimeButtonUp == 0 and TimeButtonDown == 0)
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
						SpriteAttackingSpeed = scrDameDato(Control.MovList , Ide , "Animation Speed");
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
			if (AerialAvailable and AttackButtonPressedActive and (!DownButtonActive) and (!UpButtonActive) and (!scrFowardButtonActive(self)) and (!scrBackButtonActive(self)))
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
						SpriteAttackingSpeed = scrDameDato(Control.MovList , Ide , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , Ide , "Root");
						CooldownJump = 0;
						AerialAvailable = false;
						break;
					}
				}
			}
			else if (AerialAvailable and AttackButtonPressedActive and (scrFowardButtonActive(self)))
			{
				switch(MovAerialSide)
				{
					case(8):
					{
						scrAddMov(8 , 3 , self);
						Ide = 8;
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , 8 , "Is Smash");
						AttackingHoldIndex = 1;
						SmashMaxPower = scrDameDato(Control.MovList , 8 , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackAerialSide;
						SmashActualPower = scrDameDato(Control.MovList , 8 , "Power");
						SpriteAttackingSpeed = scrDameDato(Control.MovList , Ide , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , 8 , "Root");
						CooldownJump = 0;
						AerialAvailable = false;
						break;
					}
				}
			}
			else if (AerialAvailable and AttackButtonPressedActive and (scrBackButtonActive(self)))
			{
				switch(MovAerialBack)
				{
					case(9):
					{
						var _IdeMov = 9;
						scrAddMov(9 , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , _IdeMov , "Is Smash");
						AttackingHoldIndex = 1;
						SmashMaxPower = scrDameDato(Control.MovList , _IdeMov , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackAerialBack;
						SmashActualPower = scrDameDato(Control.MovList , _IdeMov , "Power");
						SpriteAttackingSpeed = scrDameDato(Control.MovList , _IdeMov , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , _IdeMov , "Root");
						CooldownJump = 0;
						AerialAvailable = false;
						break;
					}
				}
			}
			else if (AerialAvailable and AttackButtonPressedActive and (DownButtonActive) and (TimeButtonDown != 0))
			{
				switch(MovAerialDown)
				{
					case(10):
					{
						var _IdeMov = 10;
						scrAddMov(_IdeMov , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , _IdeMov , "Is Smash");
						AttackingHoldIndex = 1;
						SmashMaxPower = scrDameDato(Control.MovList , _IdeMov , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackAerialDown;
						SmashActualPower = scrDameDato(Control.MovList , _IdeMov , "Power");
						SpriteAttackingSpeed = scrDameDato(Control.MovList , _IdeMov , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , _IdeMov , "Root");
						CooldownJump = 0;
						AerialAvailable = false;
						break;
					}
				}
			}
			else if (Recovery and scrInAir() and AttackButtonPressedActive and UpButtonActive and (TimeButtonUp != 0))
			{
				switch(MovAerialUp)
				{
					case(11):
					{
						JumpAvailable = 0;
						Recovery = false;
						var _IdeMov = 11;
						scrAddMov(_IdeMov , 0 , self);
						Attacking = true;
						AttackingHold = scrDameDato(Control.MovList , _IdeMov , "Is Smash");
						AttackingHoldIndex = 1;
						SmashMaxPower = scrDameDato(Control.MovList , _IdeMov , "Max Power");
						SmashGrownPower = .1;
						SpriteAttacking = SpriteAttackAerialUp;
						SmashActualPower = scrDameDato(Control.MovList , _IdeMov , "Power");
						SpriteAttackingSpeed = scrDameDato(Control.MovList , _IdeMov , "Animation Speed");
						image_index = 0;
						RootAttack = scrDameDato(Control.MovList , _IdeMov , "Root");
						CooldownJump = 0;
						AerialAvailable = false;
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