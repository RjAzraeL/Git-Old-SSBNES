#region Movement

#region Horizontal Speed

if (VerticalMovement != 0)
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
	ScaleX = sign(HorizontalDirection);
}
else
{
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
	RunTime = 30;
	RunValue++;
	if (RunValue >= 2 and RunTime > 0)
	{
		RunActive = true;
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