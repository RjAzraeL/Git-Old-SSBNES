#region Controllers
if (Control.CanMoveGlobal) 
{
	if (Position == 0)
{
	RightButtonActive = Control.RightButtonActive;
	LeftButtonActive = Control.LeftButtonActive;
	DownButtonPressedActive = Control.DownButtonPressedActive;
	LeftButtonPressedActive = Control.LeftButtonPressedActive;
	RightButtonPressedActive = Control.RightButtonPressedActive;
	JumpButtonActive = Control.JumpButtonActive;
	JumpButtonReleaseActive = Control.JumpButtonReleaseActive;
	AttackButtonPressedActive = Control.AttackButtonPressedActive;
	DownButtonReleasedActive = Control.DownButtonReleasedActive;
	DownButtonActive = Control.DownButtonActive;
	AttackButtonActive = Control.AttackButtonActive;
	AttackButtonReleasedActive = Control.AttackButtonReleasedActive;
	UpButtonActive = Control.UpButtonActive;
	UpButtonReleasedActive = Control.UpButtonReleasedActive;
	UpButtonPressedActive = Control.UpButtonPressedActive;
	JumpButtonPressedActive = Control.JumpButtonPressedActive;
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