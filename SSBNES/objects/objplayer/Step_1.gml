#region Controllers
if (Control.CanMoveGlobal) 
{
	if (Position == 0)
{
	RightButtonActive = Control.RightButtonActive;
	RightButtonPressedActive = Control.RightButtonPressedActive;
	LeftButtonActive = Control.LeftButtonActive;
	LeftButtonPressedActive = Control.LeftButtonPressedActive;
	DownButtonActive = Control.DownButtonActive;
	DownButtonPressedActive = Control.DownButtonPressedActive;
	DownButtonReleasedActive = Control.DownButtonReleasedActive;
	UpButtonActive = Control.UpButtonActive;
	UpButtonPressedActive = Control.UpButtonPressedActive;
	UpButtonReleasedActive = Control.UpButtonReleasedActive;
	JumpButtonActive = Control.JumpButtonActive;
	JumpButtonPressedActive = Control.JumpButtonPressedActive;
	JumpButtonReleaseActive = Control.JumpButtonReleaseActive;
	AttackButtonActive = Control.AttackButtonActive;
	AttackButtonPressedActive = Control.AttackButtonPressedActive;
	AttackButtonReleasedActive = Control.AttackButtonReleasedActive;
}
	else
{
	RightButtonActive = Control._2RightButtonActive;
	LeftButtonActive = Control._2LeftButtonActive;
	DownButtonPressedActive = Control._2DownButtonPressedActive;
	LeftButtonPressedActive = Control._2LeftButtonPressedActive;
	RightButtonPressedActive = Control._2RightButtonPressedActive;
	JumpButtonActive = Control._2JumpButtonActive;
	JumpButtonReleaseActive = Control._2JumpButtonReleaseActive;
	AttackButtonPressedActive = Control._2AttackButtonPressedActive;
	DownButtonReleasedActive = Control._2DownButtonReleasedActive;
	DownButtonActive = Control._2DownButtonActive;
	AttackButtonActive = Control._2AttackButtonActive;
	AttackButtonReleasedActive = Control._2AttackButtonReleasedActive;
	UpButtonActive = Control._2UpButtonActive;
	UpButtonReleasedActive = Control._2UpButtonReleasedActive;
	UpButtonPressedActive = Control._2UpButtonPressedActive;
	JumpButtonPressedActive = Control._2JumpButtonPressedActive;
}
}
#endregion