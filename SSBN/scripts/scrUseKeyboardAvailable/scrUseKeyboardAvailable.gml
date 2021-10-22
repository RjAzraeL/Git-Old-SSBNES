function scrUseKeyboardAvailable()
{
	return Control.DownButtonActive or Control.JumpButtonActive or Control.LeftButtonActive or Control.RightButtonActive or Control.AttackButtonActive;
}