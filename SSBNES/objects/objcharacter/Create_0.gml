#region Set variables
y = -sprite_height;
TimeHolding = 0;
ProxMovs = 0;
CooldownDamage = 0;
FallingVoid = false;
Stun = false;
Root = false;
Platform = true;
Inmune = true;
ActualMov = -1;
LastDirectionDamaged = 0;
InmuneCooldown = 0;
InmuneCooldownFull = 0;
PlatformCooldown = Control.PlatformTimeAvailable;
PlatformReady = false;
TimeButtonUp = 0;
TimeButtonDown = 0;
AttackingHold = false;
image_speed = .25;
SpriteAttackingSpeed = .25;
Angle = 0;
Jumps = 5;
GravityFallDownActive = 0;
VerticalMovementLimitExtra = 0;
CooldownJump = 0;
CooldownSwap = 0;
SaveStopJump = false;
CooldowFall = 0;
FallReady = false;
RootAttack = false;
Damaged = 0;
LastDamage = 0;
BlowsReceivedList = ds_list_create();
SavedHorizontalDirection = 0;
SavedHorizontalMovement = 0;
AcelerationPostDamage = 1;
MovementPostDamage = 0;
PlusY = 0;
_PlusY = 0;
FallAceleration = .01;
Aceleration = .1;
AcelerationValue = 0;
SpeedWalk = 0.85;
SpeedRun = 2;
SpeedFall = 1.9;
HorizontalMovement = 0;
VerticalMovement = 0;
JumpValue = 5.5;
Gravity = .3;
VerticalMovementLimit = 6;
Weigth = 2.9;
Friction = .09;
GravityFall = .1;
JumpAvailable = Jumps;
ScaleX = 1;
ScaleXSprite = 1;
LastHorizontalDirection = 1;
TimeAttacking = 0;
State = "Idle";

TranceAceleration = 0;
TranceAcelerationValue = 0;
LastScaleXSprite = 1;
LastScaleX = 1;
JumpingInTerrain = false;

ScaleY = 1;
JumpTime = 0;
Running = 0;
ActualJumpSprite = 0;
Duck = false;
DuckFall = false;
DuckTime = 0;
JumpStopSpeed = .5;
JumpStop = false;
OriginX = x;
OriginY = y;
LastDirection = 1;
RunActive = false;
RunValue = 0;
RunTime = 0;
AnimacionSaltoTerminada = false;
Skid = false;
SoundSkid = 0;
NextMov = -1;
MoveQueue = ds_list_create();
MyMovs = ds_list_create();
LifePorcentage = 0;
SmashMaxPower = 0;
SmashGrownPower = 0;
SmashActualPower = 0;
AerialAvailable = true;
AerialAvaiableList = ds_list_create();

#region Controllers
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
UpButtonActive = Control.UpButtonActive;
UpButtonReleasedActive = Control.UpButtonReleasedActive;
UpButtonPressedActive = Control.UpButtonPressedActive;
JumpButtonPressedActive = Control.JumpButtonPressedActive;
#endregion

#region Sprites
SpriteWalk = sprChKirbyWalk;
SpriteRun = sprChKirbyRun;
SpriteJump = sprChKirbyJump;
SpriteJump2 = sprChKirbyJump2;
SpriteFall = sprChKirbyFalling;
SpriteIdle = sprChKirbyIdle;
SpriteDuck = sprChKirbyDuck;
SpriteSkid = sprChKirbySkid;

SpriteAttacking = sprChKirbyDuck;

Attacking = false;
#endregion


#region Mask
MaskDuck = sprChKirbyMaskDuck;
MaskNormal = sprChKirbyMask;
#endregion

alarm[11] = 1;

#endregion

#region Camera

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

#endregion