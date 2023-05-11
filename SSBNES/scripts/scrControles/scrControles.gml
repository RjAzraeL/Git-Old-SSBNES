#region Teclas
function scrKeyPressedUnable()
{
	if (HoldLeftButton > 0)
	{
		LeftButtonPressedActive = false;
	}
	else
	{
		HoldLeftButton--;
	}
	if (HoldRightButton > 0)
	{
		RightButtonPressedActive = false;
	}
	else
	{
		HoldRightButton--;
	}
	if (HoldDownButton > 0)
	{
		DownButtonPressedActive = false;
	}
	else
	{
		HoldDownButton--;
	}
	if (HoldUpButton > 0)
	{
		UpButtonPressedActive = false;
	}
	else
	{
		HoldUpButton--;
	}
	if (HoldJumpButton > 0)
	{
		JumpButtonPressedActive = false;
	}
	else
	{
		HoldJumpButton--;
	}
	if (HoldAttackButton > 0)
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
			}
			else
			{
				RightButtonReleasedActive = true;
			}
			break;
		}
		case("Left"):
		{
			LeftButtonReleasedActive = true;
			break;
		}
		case("Right"):
		{
			RightButtonReleasedActive = true;
			break;
		}
		case("Up"):
		{
			UpButtonReleasedActive = true;
			break;
		}
		case("Down"):
		{
			DownButtonReleasedActive = true;
			break;
		}
		case("Jump"):
		{
			JumpButtonReleaseActive = true;
			break;
		}
		case("Attack"):
		{
			AttackButtonReleasedActive = true;
			break;
		}
		case("Start"):
		{
			StartButtonReleasedActive = true;
			break;
		}
		case("Select"):
		{
			SelectButtonReleasedActive = true;
			break;
		}
	}
}
function scrKeyUseMovs(Mov , Key)
{
	scrKeyActive("Attack" , true);
	switch(Mov)
	{
		case("Ground Neutral"):
		{
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
			scrKeyActive("Up" , true);
			break;
		}
		break;
	}
}
#endregion