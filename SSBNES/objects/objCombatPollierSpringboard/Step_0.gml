#region Jump
if (Jumps > 0)
{
	if  (place_meeting(x,y-4,objCharacter))
	and (!place_meeting(x,y,objCharacter))
	and (VerticalMovement == 0)
	{
		var Ch = instance_place(x , y-4 , objCharacter);
		with (Ch)
		{
			scrFreeJump(10);
		}
		scrSound(sfxPollierJump);
		IndexJump = 4;
		alarm[2] = 5;
		Jumps--;
	}
}
else
{
	instance_destroy();
}
#endregion
#region Gravity
VerticalMovement += Control.Gravity/4;
#endregion

if (HorizontalMovement > Friction)
{
	HorizontalMovement -= Friction;
}
if (HorizontalMovement < -Friction)
{
	HorizontalMovement += Friction;
}
#region Collision
if (place_meeting(x + HorizontalMovement , y , parSolid))
{
	while (!place_meeting(x + sign(HorizontalMovement) , y , parSolid))
	{
		x += sign(HorizontalMovement);
	}
	HorizontalMovement = 0;
}
if (place_meeting(x , y + VerticalMovement , parSolid))
{
	while (!place_meeting(x, y + sign(VerticalMovement) , parSolid))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
}
if (place_meeting(x , y + VerticalMovement , objBlockTransferable))
if (!place_meeting(x , y , objBlockTransferable))
{
	while (!place_meeting(x, y + sign(VerticalMovement) , objBlockTransferable))
	{
		y += sign(VerticalMovement);
	}
	VerticalMovement = 0;
}
#endregion
#region Destroy
if (place_meeting(x , y , objCharacter))
{
	var Ch = instance_place(x,y,objCharacter)
	if (Creator.id != Ch.id)
	{
	}
}
#endregion
#region Position
x += HorizontalMovement;
y += VerticalMovement;
#endregion
#region Destroy
if (scrIsOutside(self))
{
	instance_destroy();
}
#endregion
#region Sprite
if (VerticalMovement != 0)
{
	image_speed = .25;
	if (image_index >= 3.9)
	{
		image_index = 0;
	}
}
else
{
	image_index = IndexJump;
	image_speed = 0;
}
#endregion