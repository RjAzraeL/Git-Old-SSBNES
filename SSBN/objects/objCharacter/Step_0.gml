#region Movement

#region Horizontal Speed

if (!place_meeting(x , y + 1 , parCollision))
{
	var VarSpeed = SpeedFall;
}
else
{
	if (!RunActive)
	{
		var VarSpeed = SpeedWalk;
	}
	else
	{
		var VarSpeed = SpeedRun;
	}
}
#endregion

#region Horizontal Movement
var HorizontalDirection = Control.RightButtonActive - Control.LeftButtonActive;
HorizontalMovement = HorizontalDirection * VarSpeed;
if (HorizontalDirection != 0)
{
	RunTime = 20;
	ScaleX = sign(HorizontalDirection);
}
else
{
	if (RunTime == 0)
	{
		RunActive = false;
		RunValue = 0;
		LastDirection = 0;
	}
}
#endregion

#region Gravity
if (VerticalMovement < 0)
{
	VerticalMovement += Gravity;
}
else
{
	VerticalMovement += GravityFall;
}

if (VerticalMovement >= VerticalMovementLimit)
{
	VerticalMovement = VerticalMovementLimit;
}
#endregion

#region Run

if (RunTime > 0)
{
	RunTime--;
}

if (Control.LeftButtonPressedActive or Control.RightButtonPressedActive)
{
	RunValue++;
	if (RunValue == 2 and RunTime > 0 and LastDirection = ScaleX)
	{
		RunActive = true;
		RunValue = 0;
	}
	else if (RunValue > 2)
	{
		RunActive = false;
		RunValue = 0;
		LastDirection = 0;
	}
	LastDirection = ScaleX;
}
#endregion

#region Jump
if (JumpAvailable > 0 and Control.JumpButtonActive)
{
	JumpAvailable--;
	VerticalMovement = -JumpValue;
}

if (JumpTime > 0)
{
	JumpTime--;
}
#endregion

#region Collision
if (place_meeting(x + HorizontalMovement , y , parSolid))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y , parSolid))
	{
		x += sign(HorizontalMovement);
	}
	HorizontalMovement = 0;
}

if (!place_meeting(x , y , objBlockTransferable) and VerticalMovement >= 0 and !Control.DownButtonActive)
{
	if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
	{
		while (!place_meeting(x , y  + sign(VerticalMovement) , objBlockTransferable))
		{
			y += sign(VerticalMovement);
		}
		if (VerticalMovement > 0)
		{
			JumpAvailable = Jumps;
		}
		VerticalMovement = 0;
	}
}

if (place_meeting(x , y + VerticalMovement , parSolid))
{
	while (!place_meeting(x , y  + sign(VerticalMovement) , parSolid))
	{
		y += sign(VerticalMovement);
	}
	if (VerticalMovement > 0)
	{
		JumpAvailable = Jumps;
	}
	VerticalMovement = 0;
}

if (place_meeting(x + HorizontalMovement , y  + VerticalMovement, parSolid))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y + sign(VerticalMovement) , parSolid))
	{
		x += sign(HorizontalMovement);
		y += sign(VerticalMovement);
	}
	HorizontalMovement = 0;
	VerticalMovement = 0;
}

#endregion

#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion

#endregion

#region Sprite
if (place_meeting(x , y + 1 , parCollision))
{
	if (HorizontalMovement == 0)
	{
		sprite_index = SpriteIdle;
	}
	else
	{
		if (!RunActive)
		{
			sprite_index = SpriteWalk;
		}
		else
		{
			sprite_index = SpriteRun;
		}
	}
}
else
{
	sprite_index = SpriteFall;
}
#endregion