#region Set variables
event_inherited();
Mentality = "Range";
Style = choose("Brute","Finisher");
RevengeEntity = noone;
RevengeTime = 0;
DownButtonPressedActive = false;
LeftButtonPressedActive = false;
RightButtonPressedActive = false;
JumpButtonActive = false;
JumpButtonReleaseActive = false;
AttackButtonPressedActive = false;
DownButtonReleasedActive = false;
DownButtonActive = false;
AttackButtonActive = false;
AttackButtonReleasedActive = false;
UpButtonActive = false;
UpButtonReleasedActive = false;
UpButtonPressedActive = false;
JumpButtonPressedActive = choose(true,false);
SetColor = true;
LeftButtonActive = choose(true,false);
RightButtonActive = choose(true,false);
alarm[10] = 5;
alarm[0] = 60;
alarm[5] = 30;
alarm[7] = 1;
#endregion