#region Movement

var HorizontalDirection = Control.RightButtonActive - Control.LeftButtonActive;
var HorizontalMovement = HorizontalDirection * SpeedWalk;

if (VerticalMovement < 0)
{
	VerticalMovement += Gravity;
}
else
{
	VerticalMovement += GravityFall;
}

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

if (!place_meeting(x , y , objBlockTransferable) and VerticalMovement >= 0)
{
	if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
	{
		while (!place_meeting(x , y  + sign(VerticalMovement) , objBlockTransferable))
		{
			y += sign(VerticalMovement);
		}
		VerticalMovement = 0;
		JumpAvailable = Jumps;
	}
}

if (place_meeting(x , y + VerticalMovement , parSolid))
{
	while (!place_meeting(x , y  + sign(VerticalMovement) , parSolid))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
	JumpAvailable = Jumps;
}
#endregion

#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion

#endregion