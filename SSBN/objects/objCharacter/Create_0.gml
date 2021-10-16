#region Set variables
image_speed = .25;
Angle = 0;
Jumps = 2;
Aceleration = .2;
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
ScaleY = 1;
JumpTime = 0;

OriginX = x;
OriginY = y;

LastDirection = 1;
PreRunActive = false;
RunActive = false;
RunValue = 0;
RunTime = 0;


#region Sprites
SpriteWalk = sprChMarioWalk;
SpriteRun = sprChMarioRun;
SpriteJump = sprChMarioJump;
SpriteJump2 = sprChMarioJump2;
SpriteFall = sprChMarioFalling;
SpriteIdle = sprChMarioIdle;
#endregion

#endregion
