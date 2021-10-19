/*
#region Set variables
image_speed = .25;
Angle = 0;
Jumps = 2;
//Aceleration = .2;
Aceleration = .1;
AcelerationValue = 0;
SpeedWalk = 1.1;
SpeedRun = 2.2;
SpeedFall = 1.9;
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
*/
#region Set variables
image_speed = .25;
Angle = 0;
Jumps = 5;
GravityFallDownActive = 0;
VerticalMovementLimitExtra = 0;

//Aceleration = .2;
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
GravityFallPorcentage = 0;
LastDirection = 1;
PreRunActive = false;
RunActive = false;
RunValue = 0;
RunTime = 0;
AnimacionSaltoTerminada = false;
Skid = false;


#region Sprites
SpriteWalk = sprChKirbyWalk;
SpriteRun = sprChKirbyRun;
SpriteJump = sprChKirbyJump;
SpriteJump2 = sprChKirbyJump2;
SpriteFall = sprChKirbyFalling;
SpriteIdle = sprChKirbyIdle;
SpriteDuck = sprChKirbyDuck;
SpriteSkid = sprChKirbySkid;

#endregion


#region Mask
#endregion

scrSetCharacter();

#endregion

#region Camera

min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

#endregion