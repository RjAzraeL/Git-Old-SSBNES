#region Set variables
image_speed = .25;
Angle = 0;
Jumps = 2;
//Aceleration = .2;
Aceleration = .1;
AcelerationValue = 0;
SpeedWalk = 1.1;
SpeedRun = 1.5;
SpeedFall = 1.7;
HorizontalMovement = 0;
VerticalMovement = 0;
JumpValue = 6;
Gravity = .3;
VerticalMovementLimit = 6;
Weigth = 4;
Friccion = .1;
GravityFall = .1;
JumpAvailable = Jumps;
ScaleX = 1;
ScaleXSprite = 1;
ScaleY = 1;
JumpTime = 0;
Running = 0;
ActualJumpSprite = 0;
Duck = false;

OriginX = x;
OriginY = y;

LastDirection = 1;
PreRunActive = false;
RunActive = false;
RunValue = 0;
RunTime = 0;
AnimacionSaltoTerminada = false;
Skid = false;

#region Sprites
SpriteWalk = sprChMarioWalk;
SpriteRun = sprChMarioRun;
SpriteJump = sprChMarioJump;
SpriteJump2 = sprChMarioJump2;
SpriteFall = sprChMarioFalling;
SpriteIdle = sprChMarioIdle;
SpriteDuck = sprChMarioDuck;
SpriteSkid = sprChMarioSkid;
#endregion

#region Mask
MaskDuck = sprChMarioDuckMask;
MaskNormal = sprChMarioMask;
#endregion

#endregion
