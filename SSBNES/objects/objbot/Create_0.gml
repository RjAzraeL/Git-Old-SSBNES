#region Set variables
event_inherited();
Mentality = "Range";
Style = choose("Brute","Finisher");
ChaseStyle = choose("Go max","Go min");
RevengeEntity = noone;
RevengeTime = 0;
Target = noone;
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
JumpButtonPressedActive = false;
LeftButtonActive = false;
RightButtonActive = false;
StartButtonReleasedActive = false;
SelectButtonReleasedActive = false;
SetColor = true;
Target = noone;
Mode = "Avoid";
HoldLeftButton = 0;
HoldRightButton = 0;
HoldDownButton = 0;
HoldUpButton = 0;
HoldAttackButton = 0;
HoldJumpButton = 0;
ListRecover = ds_list_create();
ListRecoverActual = ds_list_create();
ListRange = ds_list_create();
ListMelee = ds_list_create();
LastMov = "";
alarm[0] = 30;
alarm[1] = 5;
MarioCooldownRecover = 0;
RageTime = 0;
RangeTime = 0;
AvoidTime = 0;
#endregion