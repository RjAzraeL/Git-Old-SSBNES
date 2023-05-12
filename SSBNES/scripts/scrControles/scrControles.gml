#region Teclas
function scrKeyPressedUnable()
{
	if (HoldLeftButton <= 0)
	{
		LeftButtonPressedActive = false;
	}
	else
	{
		HoldLeftButton--;
	}
	if (HoldRightButton <= 0)
	{
		RightButtonPressedActive = false;
	}
	else
	{
		HoldRightButton--;
	}
	if (HoldDownButton <= 0)
	{
		DownButtonPressedActive = false;
	}
	else
	{
		HoldDownButton--;
	}
	if (HoldUpButton <= 0)
	{
		UpButtonPressedActive = false;
	}
	else
	{
		HoldUpButton--;
	}
	if (HoldJumpButton <= 0)
	{
		JumpButtonPressedActive = false;
	}
	else
	{
		HoldJumpButton--;
	}
	if (HoldAttackButton <= 0)
	{
		AttackButtonPressedActive = false;
	}
	else
	{
		HoldAttackButton--;
	}
	StartButtonPressedActive = false;
	SelectButtonPressedActive = false;
}
///@arg key
///@arg active
function scrKeyActive(Key , Active)
{
	switch (Key)
	{
		case("Side"):
		{
			if (LastScaleX < 0)
			{
				LeftButtonActive = Active;
				LeftButtonPressedActive = Active;
			}
			else
			{
				RightButtonActive = Active;
				RightButtonPressedActive = Active;
			}
			break;
		}
		case("Left"):
		{
			LeftButtonActive = Active;
			LeftButtonPressedActive = Active;
			break;
		}
		case("Right"):
		{
			RightButtonActive = Active;
			RightButtonPressedActive = Active;
			break;
		}
		case("Up"):
		{
			UpButtonActive = Active;
			UpButtonPressedActive = Active;
			break;
		}
		case("Down"):
		{
			DownButtonActive = Active;
			DownButtonPressedActive = Active;
			break;
		}
		case("Jump"):
		{
			JumpButtonActive = Active;
			JumpButtonPressedActive = Active;
			break;
		}
		case("Attack"):
		{
			AttackButtonActive = Active;
			AttackButtonPressedActive = Active;
			break;
		}
		case("Start"):
		{
			StartButtonActive = Active;
			StartButtonPressedActive = Active;
			break;
		}
		case("Select"):
		{
			SelectButtonActive = Active;
			SelectButtonPressedActive = Active;
			break;
		}
		if (!Active)
		{
			scrKeyReleased(Key);
		}
	}
}
function scrKeyHold(Key , Hold)
{
	switch (Key)
	{
		case("Side"):
		{
			if (LastScaleX < 0)
			{
				HoldLeftButton = Hold;
			}
			else
			{
				HoldRightButton = Hold;
			}
			break;
		}
		case("Left"):
		{
			HoldLeftButton = Hold;
			break;
		}
		case("Right"):
		{
			HoldRightButton = Hold;
			break;
		}
		case("Up"):
		{
			HoldUpButton = Hold;
			break;
		}
		case("Down"):
		{
			HoldDownButton = Hold;
			break;
		}
		case("Jump"):
		{
			HoldJumpButton = Hold;
			break;
		}
		case("Attack"):
		{
			HoldAttackButton = Hold;
			break;
		}
	}
}
function scrKeyReleased(Key)
{
	switch (Key)
	{
		case("Side"):
		{
			if (LastScaleX < 0)
			{
				LeftButtonReleasedActive = true;
				LeftButtonActive = false;
			}
			else
			{
				RightButtonReleasedActive = true;
				RightButtonActive = false;
			}
			break;
		}
		case("Left"):
		{
			LeftButtonReleasedActive = true;
			LeftButtonActive = false;
			break;
		}
		case("Right"):
		{
			RightButtonReleasedActive = true;
			RightButtonActive = false;
			break;
		}
		case("Up"):
		{
			UpButtonReleasedActive = true;
			UpButtonActive = false;
			break;
		}
		case("Down"):
		{
			DownButtonReleasedActive = true;
			DownButtonActive = false;
			break;
		}
		case("Jump"):
		{
			JumpButtonReleaseActive = true;
			JumpButtonActive = false;
			break;
		}
		case("Attack"):
		{
			AttackButtonReleasedActive = true;
			AttackButtonActive = false;
			break;
		}
		case("Start"):
		{
			StartButtonReleasedActive = true;
			StartButtonActive = false;
			break;
		}
		case("Select"):
		{
			SelectButtonReleasedActive = true;
			SelectButtonActive = false;
			break;
		}
	}
}
function scrKeyUseMovs(Mov , Key)
{
	scrKeyActive("Attack" , true);
	scrKeyHold("Attack" , 2);
	switch(Mov)
	{
		case("Ground Neutral"):
		{
			scrKeyActive("Left" , false);
			scrKeyActive("Right" , false);
			break;
		}
		case("Ground Smash Side"):
		{
			scrKeyActive("Side" , true);
			break;
		}
		case("Ground Smash Down"):
		{
			scrKeyHold("Attack" , 30);
			scrKeyHold("Down" , 30);
			scrKeyActive("Down" , true);
			break;
		}
		case("Ground Smash Up"):
		{
			scrKeyHold("Attack" , 30);
			scrKeyHold("Up" , 30);
			scrKeyActive("Up" , true);
			break;
		}
		case("Ground Attack Side"):
		{
			scrKeyActive("Up" , true);
			break;
		}
		case("Ground Attack Down"):
		{
			scrKeyActive("Down" , true);
			break;
		}
		case("Ground Attack Up"):
		{
			scrKeyActive("Up" , true);
			break;
		}
		case("Aerial Up"):
		{
			if (VerticalMovement > 0 and !place_meeting(x , y + 4 ,parCollision))
			{
				scrKeyActive("Left" , false);
				scrKeyActive("Right" , false);
				scrKeyActive("Up" , true);
				scrKeyHold("Up" , 2);
			}
			break;
		}
		case("Aerial Down"):
		{
			if (VerticalMovement != 0 and !place_meeting(x , y + 4 ,parCollision))
			{
				scrKeyActive("Left" , false);
				scrKeyActive("Right" , false);
				scrKeyActive("Down" , true);
				scrKeyHold("Down" , 2);
			}
			break;
		}
		break;
	}
	LastMov = Mov;
}
#endregion